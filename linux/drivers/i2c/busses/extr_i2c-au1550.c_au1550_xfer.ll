; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_au1550_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-au1550.c_au1550_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_au1550_data* }
%struct.i2c_au1550_data = type { i32 }
%struct.i2c_msg = type { i32, i64, i32, i32 }

@PSC_CTRL = common dso_local global i32 0, align 4
@PSC_CTRL_ENABLE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@PSC_CTRL_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @au1550_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_au1550_data*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %12, align 8
  store %struct.i2c_au1550_data* %13, %struct.i2c_au1550_data** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %15 = load i32, i32* @PSC_CTRL, align 4
  %16 = load i32, i32* @PSC_CTRL_ENABLE, align 4
  %17 = call i32 @WR(%struct.i2c_au1550_data* %14, i32 %15, i32 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %81, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %84

27:                                               ; preds = %25
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 %30
  store %struct.i2c_msg* %31, %struct.i2c_msg** %8, align 8
  %32 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @I2C_M_RD, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @do_address(%struct.i2c_au1550_data* %32, i32 %35, i32 %40, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %27
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %27
  br label %81

55:                                               ; preds = %49
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I2C_M_RD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @i2c_read(%struct.i2c_au1550_data* %63, i32 %66, i64 %69)
  store i32 %70, i32* %10, align 4
  br label %80

71:                                               ; preds = %55
  %72 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @i2c_write(%struct.i2c_au1550_data* %72, i32 %75, i64 %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %71, %62
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %18

84:                                               ; preds = %25
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %7, align 8
  %91 = load i32, i32* @PSC_CTRL, align 4
  %92 = load i32, i32* @PSC_CTRL_SUSPEND, align 4
  %93 = call i32 @WR(%struct.i2c_au1550_data* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i32 @WR(%struct.i2c_au1550_data*, i32, i32) #1

declare dso_local i32 @do_address(%struct.i2c_au1550_data*, i32, i32, i32) #1

declare dso_local i32 @i2c_read(%struct.i2c_au1550_data*, i32, i64) #1

declare dso_local i32 @i2c_write(%struct.i2c_au1550_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
