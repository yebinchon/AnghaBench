; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cdrom_prep_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.scsi_request = type { i64*, i32 }

@READ = common dso_local global i64 0, align 8
@GPCMD_READ_10 = common dso_local global i64 0, align 8
@GPCMD_WRITE_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*)* @ide_cdrom_prep_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cdrom_prep_fs(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.scsi_request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = call i32 @queue_logical_block_size(%struct.request_queue* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = call i64 @blk_rq_pos(%struct.request* %11)
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 9
  %15 = sext i32 %14 to i64
  %16 = sdiv i64 %12, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call i32 @blk_rq_sectors(%struct.request* %17)
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 9
  %21 = sdiv i32 %18, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call %struct.scsi_request* @scsi_req(%struct.request* %23)
  store %struct.scsi_request* %24, %struct.scsi_request** %8, align 8
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call i64 @rq_data_dir(%struct.request* %25)
  %27 = load i64, i64* @READ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i64, i64* @GPCMD_READ_10, align 8
  %31 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %32 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %30, i64* %34, align 8
  br label %41

35:                                               ; preds = %2
  %36 = load i64, i64* @GPCMD_WRITE_10, align 8
  %37 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %38 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i64, i64* %6, align 8
  %43 = ashr i64 %42, 24
  %44 = and i64 %43, 255
  %45 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %46 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  store i64 %44, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = ashr i64 %49, 16
  %51 = and i64 %50, 255
  %52 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %53 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64 %51, i64* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = ashr i64 %56, 8
  %58 = and i64 %57, 255
  %59 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %60 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  store i64 %58, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  %64 = and i64 %63, 255
  %65 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %66 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 5
  store i64 %64, i64* %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = lshr i64 %69, 8
  %71 = and i64 %70, 255
  %72 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %73 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 7
  store i64 %71, i64* %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %76, 255
  %78 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %79 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 8
  store i64 %77, i64* %81, align 8
  %82 = load %struct.scsi_request*, %struct.scsi_request** %8, align 8
  %83 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %82, i32 0, i32 1
  store i32 10, i32* %83, align 8
  ret i32 1
}

declare dso_local i32 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
