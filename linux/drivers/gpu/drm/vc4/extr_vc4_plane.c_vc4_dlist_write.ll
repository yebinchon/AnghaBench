; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_dlist_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_dlist_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_plane_state = type { i32, i32, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_plane_state*, i8*)* @vc4_dlist_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_dlist_write(%struct.vc4_plane_state* %0, i8* %1) #0 {
  %3 = alloca %struct.vc4_plane_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.vc4_plane_state* %0, %struct.vc4_plane_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %8 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %11 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = call i8* @max(i32 4, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8** @kmalloc_array(i8* %20, i32 4, i32 %21)
  store i8** %22, i8*** %6, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %58

26:                                               ; preds = %14
  %27 = load i8**, i8*** %6, align 8
  %28 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %29 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %32 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 4
  %35 = call i32 @memcpy(i8** %27, i8** %30, i32 %34)
  %36 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %37 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = call i32 @kfree(i8** %38)
  %40 = load i8**, i8*** %6, align 8
  %41 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %42 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %41, i32 0, i32 2
  store i8** %40, i8*** %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %46 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %26, %2
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %50 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %3, align 8
  %53 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %51, i64 %56
  store i8* %48, i8** %57, align 8
  br label %58

58:                                               ; preds = %47, %25
  ret void
}

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8** @kmalloc_array(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
