; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-floppy.c_idefloppy_blockpc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-floppy.c_idefloppy_blockpc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_disk_obj = type { i32 }
%struct.ide_atapi_pc = type { i32, %struct.request*, i32 }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PC_FLAG_DMA_OK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@PC_FLAG_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_disk_obj*, %struct.ide_atapi_pc*, %struct.request*)* @idefloppy_blockpc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idefloppy_blockpc_cmd(%struct.ide_disk_obj* %0, %struct.ide_atapi_pc* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.ide_disk_obj*, align 8
  %5 = alloca %struct.ide_atapi_pc*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.ide_disk_obj* %0, %struct.ide_disk_obj** %4, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %7 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %8 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %7)
  %9 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %10 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = call %struct.TYPE_2__* @scsi_req(%struct.request* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(i32 %11, i32 %15, i32 4)
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %19 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %18, i32 0, i32 1
  store %struct.request* %17, %struct.request** %19, align 8
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = call i64 @blk_rq_bytes(%struct.request* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load i32, i32* @PC_FLAG_DMA_OK, align 4
  %25 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %26 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = call i64 @rq_data_dir(%struct.request* %29)
  %31 = load i64, i64* @WRITE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* @PC_FLAG_WRITING, align 4
  %35 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %36 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %23
  br label %40

40:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @scsi_req(%struct.request*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
