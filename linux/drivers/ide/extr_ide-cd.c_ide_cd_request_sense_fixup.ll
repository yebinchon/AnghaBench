; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_request_sense_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_request_sense_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_cmd = type { i32, %struct.request* }
%struct.request = type { i32* }
%struct.TYPE_2__ = type { i64* }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rq->cmd[0]: 0x%x\00", align 1
@GPCMD_REQUEST_SENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ide_cmd*)* @ide_cd_request_sense_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_cd_request_sense_fixup(i32* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ide_cmd*, align 8
  %5 = alloca %struct.request*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %4, align 8
  %6 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %6, i32 0, i32 1
  %8 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %8, %struct.request** %5, align 8
  %9 = load i32, i32* @IDE_DBG_FUNC, align 4
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ide_debug_log(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.request*, %struct.request** %5, align 8
  %17 = call %struct.TYPE_2__* @scsi_req(%struct.request* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GPCMD_REQUEST_SENSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %32, 5
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %29, %24, %2
  ret void
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @scsi_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
