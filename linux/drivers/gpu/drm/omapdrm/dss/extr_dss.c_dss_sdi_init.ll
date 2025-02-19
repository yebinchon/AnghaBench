; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_sdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_sdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }

@DSS_SDI_CONTROL = common dso_local global i32 0, align 4
@DSS_PLL_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_sdi_init(%struct.dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 1
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %16 = load i32, i32* @DSS_SDI_CONTROL, align 4
  %17 = call i32 @dss_read_reg(%struct.dss_device* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FLD_MOD(i32 %18, i32 15, i32 19, i32 15)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @FLD_MOD(i32 %20, i32 %22, i32 3, i32 2)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FLD_MOD(i32 %24, i32 2, i32 1, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %27 = load i32, i32* @DSS_SDI_CONTROL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dss_write_reg(%struct.dss_device* %26, i32 %27, i32 %28)
  %30 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %31 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %32 = call i32 @dss_read_reg(%struct.dss_device* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @FLD_MOD(i32 %33, i32 7, i32 25, i32 22)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @FLD_MOD(i32 %35, i32 11, i32 16, i32 11)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @FLD_MOD(i32 %37, i32 180, i32 10, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %40 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dss_write_reg(%struct.dss_device* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dss_read_reg(%struct.dss_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dss_write_reg(%struct.dss_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
