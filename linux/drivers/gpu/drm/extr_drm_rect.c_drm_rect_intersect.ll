; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_intersect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_rect.c_drm_rect_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_rect = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_rect_intersect(%struct.drm_rect* %0, %struct.drm_rect* %1) #0 {
  %3 = alloca %struct.drm_rect*, align 8
  %4 = alloca %struct.drm_rect*, align 8
  store %struct.drm_rect* %0, %struct.drm_rect** %3, align 8
  store %struct.drm_rect* %1, %struct.drm_rect** %4, align 8
  %5 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %6 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %9 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @max(i8* %7, i8* %10)
  %12 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %13 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %15 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %18 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @max(i8* %16, i8* %19)
  %21 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %22 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %24 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %27 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @min(i8* %25, i8* %28)
  %30 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %33 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.drm_rect*, %struct.drm_rect** %4, align 8
  %36 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @min(i8* %34, i8* %37)
  %39 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %40 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.drm_rect*, %struct.drm_rect** %3, align 8
  %42 = call i32 @drm_rect_visible(%struct.drm_rect* %41)
  ret i32 %42
}

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i32 @drm_rect_visible(%struct.drm_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
