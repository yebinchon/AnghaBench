; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_evtchnl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_evtchnl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32, i32 }
%struct.xen_drm_front_evtchnl = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.xen_drm_front_info* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.xendispl_event_page* }
%struct.xendispl_event_page = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.xen_displif_sring = type { i32 }

@EVTCHNL_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EVTCHNL_TYPE_REQ = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@evtchnl_interrupt_ctrl = common dso_local global i32 0, align 4
@evtchnl_interrupt_evt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate ring: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_drm_front_info*, i32, %struct.xen_drm_front_evtchnl*, i32)* @evtchnl_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchnl_alloc(%struct.xen_drm_front_info* %0, i32 %1, %struct.xen_drm_front_evtchnl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_drm_front_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xenbus_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xen_displif_sring*, align 8
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xen_drm_front_evtchnl* %2, %struct.xen_drm_front_evtchnl** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %17 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %16, i32 0, i32 0
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %17, align 8
  store %struct.xenbus_device* %18, %struct.xenbus_device** %10, align 8
  %19 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %20 = call i32 @memset(%struct.xen_drm_front_evtchnl* %19, i32 0, i32 64)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %23 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %26 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %6, align 8
  %28 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %29 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %28, i32 0, i32 7
  store %struct.xen_drm_front_info* %27, %struct.xen_drm_front_info** %29, align 8
  %30 = load i32, i32* @EVTCHNL_STATE_DISCONNECTED, align 4
  %31 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %32 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @GRANT_INVALID_REF, align 4
  %34 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %35 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = load i32, i32* @__GFP_HIGH, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @get_zeroed_page(i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  br label %136

45:                                               ; preds = %4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @EVTCHNL_TYPE_REQ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %51 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = call i32 @init_completion(i32* %53)
  %55 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %56 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load i64, i64* %11, align 8
  %61 = inttoptr i64 %60 to %struct.xen_displif_sring*
  store %struct.xen_displif_sring* %61, %struct.xen_displif_sring** %15, align 8
  %62 = load %struct.xen_displif_sring*, %struct.xen_displif_sring** %15, align 8
  %63 = call i32 @SHARED_RING_INIT(%struct.xen_displif_sring* %62)
  %64 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %65 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.xen_displif_sring*, %struct.xen_displif_sring** %15, align 8
  %69 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %70 = call i32 @FRONT_RING_INIT(%struct.TYPE_8__* %67, %struct.xen_displif_sring* %68, i32 %69)
  %71 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %72 = load %struct.xen_displif_sring*, %struct.xen_displif_sring** %15, align 8
  %73 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %71, %struct.xen_displif_sring* %72, i32 1, i32* %12)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %49
  %77 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %78 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @free_page(i64 %82)
  br label %136

84:                                               ; preds = %49
  %85 = load i32, i32* @evtchnl_interrupt_ctrl, align 4
  store i32 %85, i32* %13, align 4
  br label %108

86:                                               ; preds = %45
  %87 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %88 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %11, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @virt_to_gfn(i8* %91)
  %93 = call i32 @gnttab_grant_foreign_access(i32 %89, i32 %92, i32 0)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @free_page(i64 %97)
  br label %136

99:                                               ; preds = %86
  %100 = load i64, i64* %11, align 8
  %101 = inttoptr i64 %100 to %struct.xendispl_event_page*
  %102 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %103 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store %struct.xendispl_event_page* %101, %struct.xendispl_event_page** %105, align 8
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @evtchnl_interrupt_evt, align 4
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %99, %84
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %111 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %113 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %114 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %113, i32 0, i32 4
  %115 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %112, i32* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %136

119:                                              ; preds = %108
  %120 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %121 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  %125 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %128 = call i32 @bind_evtchn_to_irqhandler(i32 %122, i32 %123, i32 0, i32 %126, %struct.xen_drm_front_evtchnl* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %136

132:                                              ; preds = %119
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %8, align 8
  %135 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %5, align 4
  br label %140

136:                                              ; preds = %131, %118, %96, %76, %42
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @memset(%struct.xen_drm_front_evtchnl*, i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @SHARED_RING_INIT(%struct.xen_displif_sring*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_8__*, %struct.xen_displif_sring*, i32) #1

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, %struct.xen_displif_sring*, i32, i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @gnttab_grant_foreign_access(i32, i32, i32) #1

declare dso_local i32 @virt_to_gfn(i8*) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i32, %struct.xen_drm_front_evtchnl*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
