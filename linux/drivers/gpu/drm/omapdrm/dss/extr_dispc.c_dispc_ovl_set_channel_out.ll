; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_channel_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_channel_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32)* @dispc_ovl_set_channel_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_channel_out(%struct.dispc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %14 [
    i32 131, label %12
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
  ]

12:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  br label %16

13:                                               ; preds = %3, %3, %3
  store i32 16, i32* %7, align 4
  br label %16

14:                                               ; preds = %3
  %15 = call i32 (...) @BUG()
  br label %63

16:                                               ; preds = %13, %12
  %17 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %18)
  %20 = call i32 @dispc_read_reg(%struct.dispc_device* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %22 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %23 = call i64 @dispc_has_feature(%struct.dispc_device* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %40 [
    i32 135, label %27
    i32 136, label %28
    i32 134, label %29
    i32 133, label %30
    i32 132, label %39
  ]

27:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

28:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

29:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %42

30:                                               ; preds = %25
  %31 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %32 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %33 = call i64 @dispc_has_feature(%struct.dispc_device* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @BUG()
  br label %63

38:                                               ; preds = %35
  br label %42

39:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %42

40:                                               ; preds = %25
  %41 = call i32 (...) @BUG()
  br label %63

42:                                               ; preds = %39, %38, %29, %28, %27
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @FLD_MOD(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @FLD_MOD(i32 %48, i32 %49, i32 31, i32 30)
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %16
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @FLD_MOD(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %42
  %58 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dispc_write_reg(%struct.dispc_device* %58, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %40, %36, %14
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
