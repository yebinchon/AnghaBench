; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_complete_failed_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_complete_failed_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.TYPE_4__ = type { %struct.request* }
%struct.TYPE_3__ = type { i32, i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.request*)* @ide_cd_complete_failed_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_cd_complete_failed_rq(i32* %0, %struct.request* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call %struct.TYPE_4__* @ide_req(%struct.request* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %10, %struct.request** %5, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @bio_data(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call %struct.TYPE_3__* @scsi_req(%struct.request* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @memcpy(i32 %21, i8* %22, i32 18)
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call %struct.TYPE_3__* @scsi_req(%struct.request* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.request*, %struct.request** %5, align 8
  %29 = call %struct.TYPE_3__* @scsi_req(%struct.request* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = call i32 @cdrom_analyze_sense_data(i32* %31, %struct.request* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = load i32, i32* @BLK_STS_IOERR, align 4
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = call i32 @blk_rq_bytes(%struct.request* %37)
  %39 = call i64 @ide_end_rq(i32* %34, %struct.request* %35, i32 %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %17
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %17
  br label %47

44:                                               ; preds = %2
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @cdrom_analyze_sense_data(i32* %45, %struct.request* null)
  br label %47

47:                                               ; preds = %44, %43
  ret void
}

declare dso_local %struct.TYPE_4__* @ide_req(%struct.request*) #1

declare dso_local i8* @bio_data(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @scsi_req(%struct.request*) #1

declare dso_local i32 @cdrom_analyze_sense_data(i32*, %struct.request*) #1

declare dso_local i64 @ide_end_rq(i32*, %struct.request*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
