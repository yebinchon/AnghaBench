; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__*, %struct.iscsi_iser_task*, %struct.iscsi_conn* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_iser_task = type { i32 }
%struct.iscsi_conn = type { i32 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"cmd [itt %x total %d imm %d unsol_data %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ctask xmit [cid %d itt 0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @iscsi_iser_task_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_task_xmit(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_iser_task*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 5
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %4, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %10, i32 0, i32 4
  %12 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %11, align 8
  store %struct.iscsi_iser_task* %12, %struct.iscsi_iser_task** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %20 = call i32 @iscsi_iser_mtask_xmit(%struct.iscsi_conn* %18, %struct.iscsi_task* %19)
  store i32 %20, i32* %2, align 4
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMA_TO_DEVICE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i64 @scsi_bufflen(%struct.TYPE_4__* %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i64 @scsi_bufflen(%struct.TYPE_4__* %42)
  %44 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %48 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, i64, ...) @iser_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %43, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %29, %21
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %57 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i32, i64, ...) @iser_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %59)
  %61 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %52
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %67 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %68 = call i32 @iser_send_command(%struct.iscsi_conn* %66, %struct.iscsi_task* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %84

72:                                               ; preds = %65
  %73 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %52
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %77 = call i64 @iscsi_task_has_unsol_data(%struct.iscsi_task* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %81 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %82 = call i32 @iscsi_iser_task_xmit_unsol_data(%struct.iscsi_conn* %80, %struct.iscsi_task* %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @iscsi_iser_mtask_xmit(%struct.iscsi_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @scsi_bufflen(%struct.TYPE_4__*) #1

declare dso_local i32 @iser_dbg(i8*, i32, i64, ...) #1

declare dso_local i32 @iser_send_command(%struct.iscsi_conn*, %struct.iscsi_task*) #1

declare dso_local i64 @iscsi_task_has_unsol_data(%struct.iscsi_task*) #1

declare dso_local i32 @iscsi_iser_task_xmit_unsol_data(%struct.iscsi_conn*, %struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
