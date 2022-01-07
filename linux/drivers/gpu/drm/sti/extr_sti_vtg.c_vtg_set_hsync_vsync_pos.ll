; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_vtg_set_hsync_vsync_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vtg.c_vtg_set_hsync_vsync_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_vtg_sync_params = type { i64, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_vtg_sync_params*, i32, %struct.drm_display_mode*)* @vtg_set_hsync_vsync_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtg_set_hsync_vsync_pos(%struct.sti_vtg_sync_params* %0, i32 %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.sti_vtg_sync_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sti_vtg_sync_params* %0, %struct.sti_vtg_sync_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %47

38:                                               ; preds = %3
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %63

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i64, i64* %9, align 8
  %65 = shl i64 %64, 16
  %66 = load i64, i64* %8, align 8
  %67 = or i64 %65, %66
  %68 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %69 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  store i32 1, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %11, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %12, align 4
  br label %106

85:                                               ; preds = %63
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %10, align 4
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %11, align 4
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %85, %72
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %112 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %13, align 4
  %114 = shl i32 %113, 16
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %118 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %120 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %123 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %125 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sti_vtg_sync_params*, %struct.sti_vtg_sync_params** %4, align 8
  %128 = getelementptr inbounds %struct.sti_vtg_sync_params, %struct.sti_vtg_sync_params* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
