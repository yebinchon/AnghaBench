; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_format_mod_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_skl_plane_format_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.intel_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, i32, i32)* @skl_plane_format_mod_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_format_mod_supported(%struct.drm_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %10 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %9)
  store %struct.intel_plane* %10, %struct.intel_plane** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %20 [
    i32 154, label %12
    i32 132, label %12
    i32 131, label %12
    i32 129, label %12
    i32 130, label %13
    i32 128, label %13
  ]

12:                                               ; preds = %3, %3, %3, %3
  br label %21

13:                                               ; preds = %3, %3
  %14 = load %struct.intel_plane*, %struct.intel_plane** %8, align 8
  %15 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %46

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

21:                                               ; preds = %19, %12
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %45 [
    i32 141, label %23
    i32 144, label %23
    i32 156, label %23
    i32 158, label %23
    i32 149, label %29
    i32 142, label %29
    i32 145, label %29
    i32 134, label %29
    i32 133, label %29
    i32 148, label %29
    i32 147, label %29
    i32 153, label %29
    i32 152, label %29
    i32 151, label %29
    i32 150, label %29
    i32 138, label %29
    i32 155, label %34
    i32 146, label %34
    i32 159, label %34
    i32 143, label %34
    i32 157, label %34
    i32 137, label %34
    i32 136, label %34
    i32 135, label %34
    i32 140, label %34
    i32 139, label %34
  ]

23:                                               ; preds = %21, %21, %21, %21
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @is_ccs_modifier(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %46

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %46

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 154
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 132
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 131
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37, %34
  store i32 1, i32* %4, align 4
  br label %46

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %21, %44
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43, %32, %27, %20, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @is_ccs_modifier(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
