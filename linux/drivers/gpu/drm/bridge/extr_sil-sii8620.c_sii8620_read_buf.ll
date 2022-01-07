; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@sii8620_i2c_page = common dso_local global i32* null, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"read at %04x: %*ph, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Read at %#06x of %d bytes failed with code %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, i32, i32*, i32)* @sii8620_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_read_buf(%struct.sii8620* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sii8620*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  %13 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %15 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %11, align 4
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32* %11, i32** %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %28 = load i32*, i32** @sii8620_i2c_page, align 8
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 1
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @I2C_M_RD, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %35, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 2
  %44 = load i32*, i32** %7, align 8
  store i32* %44, i32** %43, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 3
  %46 = load i32*, i32** @sii8620_i2c_page, align 8
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %45, align 8
  %52 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %53 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %4
  br label %88

57:                                               ; preds = %4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %62 = call i32 @i2c_transfer(i32 %60, %struct.i2c_msg* %61, i32 2)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32* %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %71, label %88

71:                                               ; preds = %57
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %13, align 4
  br label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  %86 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %87 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %56, %84, %57
  ret void
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
