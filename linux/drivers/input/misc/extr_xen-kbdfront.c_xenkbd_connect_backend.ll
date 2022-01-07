; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_connect_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_xen-kbdfront.c_xenkbd_connect_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32, i32 }
%struct.xenkbd_info = type { i32, i32, i32 }
%struct.xenbus_transaction = type { i32 }

@input_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bind_evtchn_to_irqhandler\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@XENKBD_FIELD_RING_REF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@XENKBD_FIELD_RING_GREF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@XENKBD_FIELD_EVT_CHANNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"writing xenstore\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenkbd_info*)* @xenkbd_connect_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenkbd_connect_backend(%struct.xenbus_device* %0, %struct.xenkbd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenkbd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenkbd_info* %1, %struct.xenkbd_info** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %13 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @virt_to_gfn(i32 %14)
  %16 = call i32 @gnttab_grant_foreign_access(i32 %11, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %144

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %24 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %26 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %136

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @input_handler, align 4
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %34 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %37 = call i32 @bind_evtchn_to_irqhandler(i32 %31, i32 %32, i32 0, i32 %35, %struct.xenkbd_info* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %41, i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %132

44:                                               ; preds = %30
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %47 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %108, %44
  %49 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %8)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %53, i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %124

56:                                               ; preds = %48
  %57 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %58 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @XENKBD_FIELD_RING_REF, align 4
  %61 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %62 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @virt_to_gfn(i32 %63)
  %65 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xenbus_printf(i32 %66, i32 %59, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %117

71:                                               ; preds = %56
  %72 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %73 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XENKBD_FIELD_RING_GREF, align 4
  %76 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %77 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xenbus_printf(i32 %80, i32 %74, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %117

85:                                               ; preds = %71
  %86 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %87 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @XENKBD_FIELD_EVT_CHANNEL, align 4
  %90 = load i32, i32* %7, align 4
  %91 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @xenbus_printf(i32 %92, i32 %88, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %117

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @xenbus_transaction_end(i32 %99, i32 0)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %48

109:                                              ; preds = %103
  %110 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %110, i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %124

113:                                              ; preds = %97
  %114 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %115 = load i32, i32* @XenbusStateInitialised, align 4
  %116 = call i32 @xenbus_switch_state(%struct.xenbus_device* %114, i32 %115)
  store i32 0, i32* %3, align 4
  br label %144

117:                                              ; preds = %96, %84, %70
  %118 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @xenbus_transaction_end(i32 %119, i32 1)
  %121 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %121, i32 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %117, %109, %52
  %125 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %126 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %129 = call i32 @unbind_from_irqhandler(i32 %127, %struct.xenkbd_info* %128)
  %130 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %131 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %130, i32 0, i32 1
  store i32 -1, i32* %131, align 4
  br label %132

132:                                              ; preds = %124, %40
  %133 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @xenbus_free_evtchn(%struct.xenbus_device* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %29
  %137 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %138 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @gnttab_end_foreign_access(i32 %139, i32 0, i64 0)
  %141 = load %struct.xenkbd_info*, %struct.xenkbd_info** %5, align 8
  %142 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 4
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %136, %113, %19
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @gnttab_grant_foreign_access(i32, i32, i32) #1

declare dso_local i32 @virt_to_gfn(i32) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i32, %struct.xenkbd_info*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.xenkbd_info*) #1

declare dso_local i32 @xenbus_free_evtchn(%struct.xenbus_device*, i32) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
