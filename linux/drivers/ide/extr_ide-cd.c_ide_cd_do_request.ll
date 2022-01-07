; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_do_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.request = type { i32, i32* }
%struct.ide_cmd = type { %struct.request*, i32 }
%struct.TYPE_11__ = type { i32 }

@IDE_DBG_RQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cmd: 0x%x, block: %llu\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ide_cd_do_request\00", align 1
@ide_stopped = common dso_local global i32 0, align 4
@ATAPI_WAIT_PC = common dso_local global i32 0, align 4
@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.request*, i64)* @ide_cd_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_do_request(%struct.TYPE_10__* %0, %struct.request* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ide_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @IDE_DBG_RQ, align 4
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @ide_debug_log(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IDE_DBG_RQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = call i32 @blk_dump_rq_flags(%struct.request* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = call i32 @req_op(%struct.request* %29)
  switch i32 %30, label %31 [
    i32 129, label %39
    i32 128, label %39
    i32 131, label %53
    i32 130, label %53
  ]

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = call i32 @cdrom_start_rw(%struct.TYPE_10__* %32, %struct.request* %33)
  %35 = load i32, i32* @ide_stopped, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %95

38:                                               ; preds = %31
  br label %63

39:                                               ; preds = %28, %28
  br label %40

40:                                               ; preds = %59, %39
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ATAPI_WAIT_PC, align 4
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load %struct.request*, %struct.request** %6, align 8
  %52 = call i32 @cdrom_do_block_pc(%struct.TYPE_10__* %50, %struct.request* %51)
  br label %63

53:                                               ; preds = %28, %28
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = call %struct.TYPE_11__* @ide_req(%struct.request* %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %60 [
    i32 134, label %58
    i32 132, label %59
    i32 133, label %59
  ]

58:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %95

59:                                               ; preds = %53, %53
  br label %40

60:                                               ; preds = %53
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62, %49, %38
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load %struct.request*, %struct.request** %6, align 8
  %66 = call i32 @ide_prep_sense(%struct.TYPE_10__* %64, %struct.request* %65)
  %67 = call i32 @memset(%struct.ide_cmd* %8, i32 0, i32 16)
  %68 = load %struct.request*, %struct.request** %6, align 8
  %69 = call i64 @rq_data_dir(%struct.request* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %73 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %63
  %77 = load %struct.request*, %struct.request** %6, align 8
  %78 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %8, i32 0, i32 0
  store %struct.request* %77, %struct.request** %78, align 8
  %79 = load %struct.request*, %struct.request** %6, align 8
  %80 = call i32 @blk_rq_is_passthrough(%struct.request* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.request*, %struct.request** %6, align 8
  %84 = call i64 @blk_rq_bytes(%struct.request* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82, %76
  %87 = load %struct.request*, %struct.request** %6, align 8
  %88 = call i64 @blk_rq_bytes(%struct.request* %87)
  %89 = call i32 @ide_init_sg_cmd(%struct.ide_cmd* %8, i64 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = call i32 @ide_map_sg(%struct.TYPE_10__* %90, %struct.ide_cmd* %8)
  br label %92

92:                                               ; preds = %86, %82
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = call i32 @ide_issue_pc(%struct.TYPE_10__* %93, %struct.ide_cmd* %8)
  store i32 %94, i32* %4, align 4
  br label %115

95:                                               ; preds = %58, %37
  %96 = load %struct.request*, %struct.request** %6, align 8
  %97 = call i32 @blk_rq_sectors(%struct.request* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @BLK_STS_OK, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 9
  %113 = call i32 @ide_complete_rq(%struct.TYPE_10__* %102, i32 %110, i32 %112)
  %114 = load i32, i32* @ide_stopped, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %92
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i64) #1

declare dso_local i32 @blk_dump_rq_flags(%struct.request*, i8*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @cdrom_start_rw(%struct.TYPE_10__*, %struct.request*) #1

declare dso_local i32 @cdrom_do_block_pc(%struct.TYPE_10__*, %struct.request*) #1

declare dso_local %struct.TYPE_11__* @ide_req(%struct.request*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ide_prep_sense(%struct.TYPE_10__*, %struct.request*) #1

declare dso_local i32 @memset(%struct.ide_cmd*, i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @ide_init_sg_cmd(%struct.ide_cmd*, i64) #1

declare dso_local i32 @ide_map_sg(%struct.TYPE_10__*, %struct.ide_cmd*) #1

declare dso_local i32 @ide_issue_pc(%struct.TYPE_10__*, %struct.ide_cmd*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
