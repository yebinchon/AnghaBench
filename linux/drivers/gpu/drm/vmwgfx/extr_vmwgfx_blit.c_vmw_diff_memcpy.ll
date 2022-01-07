; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_blit.c_vmw_diff_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_blit.c_vmw_diff_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_diff_cpy = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_diff_memcpy(%struct.vmw_diff_cpy* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.vmw_diff_cpy*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vmw_diff_cpy* %0, %struct.vmw_diff_cpy** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %13 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @round_down(i64 %11, i64 %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %81

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %27 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @vmw_find_first_diff(i32* %23, i32* %24, i64 %25, i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %22
  %34 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @vmw_adjust_rect(%struct.vmw_diff_cpy* %34, i64 %35)
  %37 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %38 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %42 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 %48
  store i32* %50, i32** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %58 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @vmw_find_last_diff(i32* %54, i32* %55, i64 %56, i64 %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp uge i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %33
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @vmw_adjust_rect(%struct.vmw_diff_cpy* %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %33
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @memcpy(i32* %71, i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %22
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %5, align 8
  %78 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, %76
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %75, %21
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i64 @vmw_find_first_diff(i32*, i32*, i64, i64) #1

declare dso_local i32 @vmw_adjust_rect(%struct.vmw_diff_cpy*, i64) #1

declare dso_local i64 @vmw_find_last_diff(i32*, i32*, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
