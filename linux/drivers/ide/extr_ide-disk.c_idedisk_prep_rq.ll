; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-disk.c_idedisk_prep_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-disk.c_idedisk_prep_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.request = type { i32 }
%struct.ide_cmd = type { %struct.request*, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.ide_cmd*, i32 }

@REQ_OP_FLUSH = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ATA_CMD_FLUSH_EXT = common dso_local global i32 0, align 4
@ATA_CMD_FLUSH = common dso_local global i32 0, align 4
@IDE_VALID_OUT_TF = common dso_local global i32 0, align 4
@IDE_VALID_DEVICE = common dso_local global i32 0, align 4
@IDE_TFLAG_DYN = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@REQ_OP_MASK = common dso_local global i32 0, align 4
@REQ_OP_DRV_OUT = common dso_local global i32 0, align 4
@ATA_PRIV_TASKFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.request*)* @idedisk_prep_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idedisk_prep_rq(%struct.TYPE_10__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = call i64 @req_op(%struct.request* %7)
  %9 = load i64, i64* @REQ_OP_FLUSH, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %89

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = call %struct.TYPE_11__* @ide_req(%struct.request* %13)
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.ide_cmd*, %struct.ide_cmd** %15, align 8
  %17 = icmp ne %struct.ide_cmd* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = call %struct.TYPE_11__* @ide_req(%struct.request* %19)
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.ide_cmd*, %struct.ide_cmd** %21, align 8
  store %struct.ide_cmd* %22, %struct.ide_cmd** %6, align 8
  %23 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %24 = call i32 @memset(%struct.ide_cmd* %23, i32 0, i32 24)
  br label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.ide_cmd* @kzalloc(i32 24, i32 %26)
  store %struct.ide_cmd* %27, %struct.ide_cmd** %6, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %30 = icmp eq %struct.ide_cmd* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ata_id_flush_ext_enabled(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %41, 268435456
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @ATA_CMD_FLUSH_EXT, align 4
  %45 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %53

48:                                               ; preds = %38, %28
  %49 = load i32, i32* @ATA_CMD_FLUSH, align 4
  %50 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @IDE_VALID_OUT_TF, align 4
  %55 = load i32, i32* @IDE_VALID_DEVICE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* @IDE_TFLAG_DYN, align 4
  %62 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ATA_PROT_NODATA, align 4
  %65 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @REQ_OP_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.request*, %struct.request** %5, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @REQ_OP_DRV_OUT, align 4
  %74 = load %struct.request*, %struct.request** %5, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @ATA_PRIV_TASKFILE, align 4
  %79 = load %struct.request*, %struct.request** %5, align 8
  %80 = call %struct.TYPE_11__* @ide_req(%struct.request* %79)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %83 = load %struct.request*, %struct.request** %5, align 8
  %84 = call %struct.TYPE_11__* @ide_req(%struct.request* %83)
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store %struct.ide_cmd* %82, %struct.ide_cmd** %85, align 8
  %86 = load %struct.request*, %struct.request** %5, align 8
  %87 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %87, i32 0, i32 0
  store %struct.request* %86, %struct.request** %88, align 8
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %53, %11
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local %struct.TYPE_11__* @ide_req(%struct.request*) #1

declare dso_local i32 @memset(%struct.ide_cmd*, i32, i32) #1

declare dso_local %struct.ide_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ata_id_flush_ext_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
