; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_copy_to_from_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_copy_to_from_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.ccp_op*)* }
%struct.ccp_op = type { i32, i32, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_20__, i8*, %struct.ccp_cmd_queue* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i8* }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.ccp_dm_workarea = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@CCP_MEMTYPE_SB = common dso_local global i8* null, align 8
@CCP_MEMTYPE_SYSTEM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_cmd_queue*, %struct.ccp_dm_workarea*, i8*, i8*, i8*, i32)* @ccp_copy_to_from_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_copy_to_from_sb(%struct.ccp_cmd_queue* %0, %struct.ccp_dm_workarea* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ccp_cmd_queue*, align 8
  %8 = alloca %struct.ccp_dm_workarea*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccp_op, align 8
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %7, align 8
  store %struct.ccp_dm_workarea* %1, %struct.ccp_dm_workarea** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call i32 @memset(%struct.ccp_op* %13, i32 0, i32 80)
  %15 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 6
  store %struct.ccp_cmd_queue* %15, %struct.ccp_cmd_queue** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 5
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i8*, i8** @CCP_MEMTYPE_SB, align 8
  %25 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @CCP_MEMTYPE_SYSTEM, align 8
  %32 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %8, align 8
  %35 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %8, align 8
  %43 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  br label %75

49:                                               ; preds = %6
  %50 = load i8*, i8** @CCP_MEMTYPE_SYSTEM, align 8
  %51 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %8, align 8
  %54 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %8, align 8
  %62 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  %68 = load i8*, i8** @CCP_MEMTYPE_SB, align 8
  %69 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  br label %75

75:                                               ; preds = %49, %22
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %13, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %7, align 8
  %81 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32 (%struct.ccp_op*)*, i32 (%struct.ccp_op*)** %87, align 8
  %89 = call i32 %88(%struct.ccp_op* %13)
  ret i32 %89
}

declare dso_local i32 @memset(%struct.ccp_op*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
