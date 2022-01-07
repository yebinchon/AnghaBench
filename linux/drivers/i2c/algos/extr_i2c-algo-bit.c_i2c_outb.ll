; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_i2c_outb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/algos/extr_i2c-algo-bit.c_i2c_outb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_bit_data* }
%struct.i2c_algo_bit_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"i2c_outb: 0x%02x, timeout at bit #%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"i2c_outb: 0x%02x, timeout at ack\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"i2c_outb: 0x%02x %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8)* @i2c_outb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_outb(%struct.i2c_adapter* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_algo_bit_data*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 1
  %12 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  store %struct.i2c_algo_bit_data* %12, %struct.i2c_algo_bit_data** %9, align 8
  store i32 7, i32* %6, align 4
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @setsda(%struct.i2c_algo_bit_data* %22, i32 %23)
  %25 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %26 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = sdiv i32 %28, 2
  %30 = call i32 @udelay(i32 %29)
  %31 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %32 = call i64 @sclhi(%struct.i2c_algo_bit_data* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %16
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 0
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i32*, i8*, i32, ...) @bit_dbg(i32 1, i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %81

43:                                               ; preds = %16
  %44 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %45 = call i32 @scllo(%struct.i2c_algo_bit_data* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %51 = call i32 @sdahi(%struct.i2c_algo_bit_data* %50)
  %52 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %53 = call i64 @sclhi(%struct.i2c_algo_bit_data* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 0
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 (i32, i32*, i8*, i32, ...) @bit_dbg(i32 1, i32* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %81

63:                                               ; preds = %49
  %64 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %65 = call i32 @getsda(%struct.i2c_algo_bit_data* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %69, i32 0, i32 0
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %77 = call i32 (i32, i32*, i8*, i32, ...) @bit_dbg(i32 2, i32* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %76)
  %78 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %9, align 8
  %79 = call i32 @scllo(%struct.i2c_algo_bit_data* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %63, %55, %34
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @setsda(%struct.i2c_algo_bit_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @sclhi(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @bit_dbg(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @scllo(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @sdahi(%struct.i2c_algo_bit_data*) #1

declare dso_local i32 @getsda(%struct.i2c_algo_bit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
