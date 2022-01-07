; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_uld_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_uld_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uld_ctx = type { %struct.TYPE_7__*, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ib_event = type { i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"new_state %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: Up\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: initialization failed: %ld\0A\00", align 1
@c4iw_register_device = common dso_local global i32 0, align 4
@reg_workq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: Down\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: Fatal Error\0A\00", align 1
@T4_FATAL_ERROR = common dso_local global i32 0, align 4
@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%s: Detach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @c4iw_uld_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_uld_state_change(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uld_ctx*, align 8
  %6 = alloca %struct.ib_event, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.uld_ctx*
  store %struct.uld_ctx* %8, %struct.uld_ctx** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %119 [
    i32 128, label %12
    i32 131, label %57
    i32 130, label %72
    i32 129, label %72
    i32 132, label %104
  ]

12:                                               ; preds = %2
  %13 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_name(i32 %16)
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %12
  %24 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %24, i32 0, i32 1
  %26 = call %struct.TYPE_7__* @c4iw_alloc(%struct.TYPE_8__* %25)
  %27 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %27, i32 0, i32 0
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = call i32 @IS_ERR(%struct.TYPE_7__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %23
  %35 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pci_name(i32 %38)
  %40 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.TYPE_7__* %42)
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %45, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  br label %119

47:                                               ; preds = %23
  %48 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %48, i32 0, i32 2
  %50 = load i32, i32* @c4iw_register_device, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load i32, i32* @reg_workq, align 4
  %53 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %53, i32 0, i32 2
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %47, %12
  br label %119

57:                                               ; preds = %2
  %58 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pci_name(i32 %61)
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %70 = call i32 @c4iw_remove(%struct.uld_ctx* %69)
  br label %71

71:                                               ; preds = %68, %57
  br label %119

72:                                               ; preds = %2, %2
  %73 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pci_name(i32 %76)
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = icmp ne %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %103

83:                                               ; preds = %72
  %84 = bitcast %struct.ib_event* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %84, i8 0, i64 16, i1 false)
  %85 = load i32, i32* @T4_FATAL_ERROR, align 4
  %86 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %85
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %94 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 1
  store i32 %93, i32* %94, align 8
  %95 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 0
  store i32* %98, i32** %99, align 8
  %100 = call i32 @ib_dispatch_event(%struct.ib_event* %6)
  %101 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %102 = call i32 @c4iw_remove(%struct.uld_ctx* %101)
  br label %103

103:                                              ; preds = %83, %72
  br label %119

104:                                              ; preds = %2
  %105 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pci_name(i32 %108)
  %110 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = icmp ne %struct.TYPE_7__* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load %struct.uld_ctx*, %struct.uld_ctx** %5, align 8
  %117 = call i32 @c4iw_remove(%struct.uld_ctx* %116)
  br label %118

118:                                              ; preds = %115, %104
  br label %119

119:                                              ; preds = %2, %118, %103, %71, %56, %34
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local %struct.TYPE_7__* @c4iw_alloc(%struct.TYPE_8__*) #1

declare dso_local i32 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @c4iw_remove(%struct.uld_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
