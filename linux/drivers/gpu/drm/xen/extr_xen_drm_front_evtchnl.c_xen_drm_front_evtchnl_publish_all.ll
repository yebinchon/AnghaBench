; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_publish_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_evtchnl.c_xen_drm_front_evtchnl_publish_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, %struct.TYPE_3__*, %struct.xen_drm_front_cfg }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xen_drm_front_cfg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@XENDISPL_FIELD_REQ_RING_REF = common dso_local global i32 0, align 4
@XENDISPL_FIELD_REQ_CHANNEL = common dso_local global i32 0, align 4
@XENDISPL_FIELD_EVT_RING_REF = common dso_local global i32 0, align 4
@XENDISPL_FIELD_EVT_CHANNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"writing Xen store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_evtchnl_publish_all(%struct.xen_drm_front_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_drm_front_info*, align 8
  %4 = alloca %struct.xenbus_transaction, align 4
  %5 = alloca %struct.xen_drm_front_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %3, align 8
  %8 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %9 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %8, i32 0, i32 2
  store %struct.xen_drm_front_cfg* %9, %struct.xen_drm_front_cfg** %5, align 8
  br label %10

10:                                               ; preds = %91, %1
  %11 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %16 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @xenbus_dev_fatal(i32 %17, i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %77, %21
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %30 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XENDISPL_FIELD_REQ_RING_REF, align 4
  %45 = load i32, i32* @XENDISPL_FIELD_REQ_CHANNEL, align 4
  %46 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @evtchnl_publish(i32 %47, i32* %35, i32 %43, i32 %44, i32 %45)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  br label %99

52:                                               ; preds = %28
  %53 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %54 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XENDISPL_FIELD_EVT_RING_REF, align 4
  %69 = load i32, i32* @XENDISPL_FIELD_EVT_CHANNEL, align 4
  %70 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @evtchnl_publish(i32 %71, i32* %59, i32 %67, i32 %68, i32 %69)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %99

76:                                               ; preds = %52
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %22

80:                                               ; preds = %22
  %81 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @xenbus_transaction_end(i32 %82, i32 0)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %10

92:                                               ; preds = %86
  %93 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %94 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @xenbus_dev_fatal(i32 %95, i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %103

98:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %110

99:                                               ; preds = %75, %51
  %100 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @xenbus_transaction_end(i32 %101, i32 1)
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %3, align 8
  %105 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @xenbus_dev_fatal(i32 %106, i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %103, %98, %14
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local i32 @evtchnl_publish(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
