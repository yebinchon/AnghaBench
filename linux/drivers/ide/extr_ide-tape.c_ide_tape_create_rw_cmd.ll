; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_ide_tape_create_rw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_ide_tape_create_rw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.ide_atapi_pc = type { i32*, i32 }
%struct.request = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PC_FLAG_DMA_OK = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i8* null, align 8
@WRITE_6 = common dso_local global i8* null, align 8
@PC_FLAG_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.ide_atapi_pc*, %struct.request*, i8*)* @ide_tape_create_rw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_tape_create_rw_cmd(%struct.TYPE_4__* %0, %struct.ide_atapi_pc* %1, %struct.request* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.ide_atapi_pc*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.request*, %struct.request** %7, align 8
  %11 = call i32 @blk_rq_sectors(%struct.request* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 9
  %16 = sdiv i32 %11, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %18 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %22 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = call i32 @put_unaligned(i32 %20, i32* %24)
  %26 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %27 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.request*, %struct.request** %7, align 8
  %31 = call i64 @blk_rq_bytes(%struct.request* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i32, i32* @PC_FLAG_DMA_OK, align 4
  %38 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %39 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %4
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** @READ_6, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** @READ_6, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %50 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  br label %70

53:                                               ; preds = %42
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** @WRITE_6, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** @WRITE_6, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %61 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @PC_FLAG_WRITING, align 4
  %65 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %66 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %57, %53
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.request*, %struct.request** %7, align 8
  %72 = call %struct.TYPE_5__* @scsi_req(%struct.request* %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %76 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @memcpy(i32 %74, i32* %77, i32 12)
  ret void
}

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @scsi_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
