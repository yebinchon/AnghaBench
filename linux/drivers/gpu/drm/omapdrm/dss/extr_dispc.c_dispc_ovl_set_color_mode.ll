; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_color_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_color_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32)* @dispc_ovl_set_color_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_color_mode(%struct.dispc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @OMAP_DSS_GFX, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %28 [
    i32 139, label %13
    i32 130, label %14
    i32 136, label %15
    i32 134, label %16
    i32 141, label %17
    i32 138, label %18
    i32 142, label %19
    i32 129, label %20
    i32 137, label %21
    i32 128, label %22
    i32 132, label %23
    i32 140, label %24
    i32 135, label %25
    i32 133, label %26
    i32 131, label %27
  ]

13:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %30

14:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  br label %30

15:                                               ; preds = %11
  store i32 2, i32* %7, align 4
  br label %30

16:                                               ; preds = %11
  store i32 4, i32* %7, align 4
  br label %30

17:                                               ; preds = %11
  store i32 5, i32* %7, align 4
  br label %30

18:                                               ; preds = %11
  store i32 6, i32* %7, align 4
  br label %30

19:                                               ; preds = %11
  store i32 7, i32* %7, align 4
  br label %30

20:                                               ; preds = %11
  store i32 8, i32* %7, align 4
  br label %30

21:                                               ; preds = %11
  store i32 9, i32* %7, align 4
  br label %30

22:                                               ; preds = %11
  store i32 10, i32* %7, align 4
  br label %30

23:                                               ; preds = %11
  store i32 11, i32* %7, align 4
  br label %30

24:                                               ; preds = %11
  store i32 12, i32* %7, align 4
  br label %30

25:                                               ; preds = %11
  store i32 13, i32* %7, align 4
  br label %30

26:                                               ; preds = %11
  store i32 14, i32* %7, align 4
  br label %30

27:                                               ; preds = %11
  store i32 15, i32* %7, align 4
  br label %30

28:                                               ; preds = %11
  %29 = call i32 (...) @BUG()
  br label %54

30:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  br label %48

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %45 [
    i32 134, label %33
    i32 141, label %34
    i32 138, label %35
    i32 142, label %36
    i32 129, label %37
    i32 137, label %38
    i32 130, label %39
    i32 136, label %40
    i32 140, label %41
    i32 135, label %42
    i32 133, label %43
    i32 131, label %44
  ]

33:                                               ; preds = %31
  store i32 4, i32* %7, align 4
  br label %47

34:                                               ; preds = %31
  store i32 5, i32* %7, align 4
  br label %47

35:                                               ; preds = %31
  store i32 6, i32* %7, align 4
  br label %47

36:                                               ; preds = %31
  store i32 7, i32* %7, align 4
  br label %47

37:                                               ; preds = %31
  store i32 8, i32* %7, align 4
  br label %47

38:                                               ; preds = %31
  store i32 9, i32* %7, align 4
  br label %47

39:                                               ; preds = %31
  store i32 10, i32* %7, align 4
  br label %47

40:                                               ; preds = %31
  store i32 11, i32* %7, align 4
  br label %47

41:                                               ; preds = %31
  store i32 12, i32* %7, align 4
  br label %47

42:                                               ; preds = %31
  store i32 13, i32* %7, align 4
  br label %47

43:                                               ; preds = %31
  store i32 14, i32* %7, align 4
  br label %47

44:                                               ; preds = %31
  store i32 15, i32* %7, align 4
  br label %47

45:                                               ; preds = %31
  %46 = call i32 (...) @BUG()
  br label %54

47:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @REG_FLD_MOD(%struct.dispc_device* %49, i32 %51, i32 %52, i32 4, i32 1)
  br label %54

54:                                               ; preds = %48, %45, %28
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
