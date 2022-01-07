; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-ioctls.c_generic_drive_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-ioctls.c_generic_drive_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.request = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }

@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@ATA_PRIV_MISC = common dso_local global i32 0, align 4
@REQ_DRIVE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @generic_drive_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_drive_reset(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REQ_OP_DRV_IN, align 4
  %9 = call %struct.request* @blk_get_request(i32 %7, i32 %8, i32 0)
  store %struct.request* %9, %struct.request** %3, align 8
  %10 = load i32, i32* @ATA_PRIV_MISC, align 4
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = call %struct.TYPE_7__* @ide_req(%struct.request* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = call %struct.TYPE_6__* @scsi_req(%struct.request* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @REQ_DRIVE_RESET, align 4
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = call %struct.TYPE_6__* @scsi_req(%struct.request* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %17, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = call i32 @blk_execute_rq(i32 %25, i32* null, %struct.request* %26, i32 1)
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = call %struct.TYPE_6__* @scsi_req(%struct.request* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = call i32 @blk_put_request(%struct.request* %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ide_req(%struct.request*) #1

declare dso_local %struct.TYPE_6__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
