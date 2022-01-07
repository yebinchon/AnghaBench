; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_read_xyz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_read_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_magn_data = type { i32 }
%struct.bmc150_magn_trim_regs = type { i32 }

@AXIS_XYZR_MAX = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_X_L = common dso_local global i32 0, align 4
@AXIS_X = common dso_local global i64 0, align 8
@BMC150_MAGN_SHIFT_XY_L = common dso_local global i32 0, align 4
@AXIS_Y = common dso_local global i64 0, align 8
@AXIS_Z = common dso_local global i64 0, align 8
@BMC150_MAGN_SHIFT_Z_L = common dso_local global i32 0, align 4
@RHALL = common dso_local global i64 0, align 8
@BMC150_MAGN_SHIFT_RHALL_L = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_TRIM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_data*, i32*)* @bmc150_magn_read_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_read_xyz(%struct.bmc150_magn_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmc150_magn_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bmc150_magn_trim_regs, align 4
  %14 = alloca i32, align 4
  store %struct.bmc150_magn_data* %0, %struct.bmc150_magn_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @AXIS_XYZR_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.bmc150_magn_trim_regs, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %20 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BMC150_MAGN_REG_X_L, align 4
  %23 = mul nuw i64 4, %16
  %24 = trunc i64 %23 to i32
  %25 = call i32 @regmap_bulk_read(i32 %21, i32 %22, %struct.bmc150_magn_trim_regs* %18, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %87

30:                                               ; preds = %2
  %31 = load i64, i64* @AXIS_X, align 8
  %32 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %18, i64 %31
  %33 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load i32, i32* @BMC150_MAGN_SHIFT_XY_L, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* @AXIS_Y, align 8
  %39 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %18, i64 %38
  %40 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = load i32, i32* @BMC150_MAGN_SHIFT_XY_L, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* @AXIS_Z, align 8
  %46 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %18, i64 %45
  %47 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load i32, i32* @BMC150_MAGN_SHIFT_Z_L, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load i64, i64* @RHALL, align 8
  %53 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %18, i64 %52
  %54 = getelementptr inbounds %struct.bmc150_magn_trim_regs, %struct.bmc150_magn_trim_regs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32, i32* @BMC150_MAGN_SHIFT_RHALL_L, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %60 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BMC150_MAGN_REG_TRIM_START, align 4
  %63 = call i32 @regmap_bulk_read(i32 %61, i32 %62, %struct.bmc150_magn_trim_regs* %13, i32 4)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %30
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %87

68:                                               ; preds = %30
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @bmc150_magn_compensate_x(%struct.bmc150_magn_trim_regs* %13, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i64, i64* @AXIS_X, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @bmc150_magn_compensate_y(%struct.bmc150_magn_trim_regs* %13, i32 %75, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* @AXIS_Y, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @bmc150_magn_compensate_z(%struct.bmc150_magn_trim_regs* %13, i32 %81, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* @AXIS_Z, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %83, i32* %86, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %68, %66, %28
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap_bulk_read(i32, i32, %struct.bmc150_magn_trim_regs*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @bmc150_magn_compensate_x(%struct.bmc150_magn_trim_regs*, i32, i32) #2

declare dso_local i32 @bmc150_magn_compensate_y(%struct.bmc150_magn_trim_regs*, i32, i32) #2

declare dso_local i32 @bmc150_magn_compensate_z(%struct.bmc150_magn_trim_regs*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
