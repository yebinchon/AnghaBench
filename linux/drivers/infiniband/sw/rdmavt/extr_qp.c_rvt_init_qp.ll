; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_init_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_init_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { i32 }
%struct.rvt_qp = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i64, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RVT_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@IB_OPCODE_RC_SEND_LAST = common dso_local global i8* null, align 8
@IB_OPCODE_UC_SEND_LAST = common dso_local global i8* null, align 8
@IB_OPCODE_RC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_dev_info*, %struct.rvt_qp*, i32)* @rvt_init_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvt_init_qp(%struct.rvt_dev_info* %0, %struct.rvt_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.rvt_dev_info*, align 8
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %4, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 34
  store i64 0, i64* %8, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 33
  store i64 0, i64* %10, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 32
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @RVT_S_SIGNAL_REQ_WR, align 4
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 31
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %19 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %18, i32 0, i32 30
  store i64 0, i64* %19, align 8
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 29
  store i32* null, i32** %21, align 8
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 28
  store i64 0, i64* %23, align 8
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 27
  store i64 0, i64* %25, align 8
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 26
  store i64 0, i64* %27, align 8
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 25
  store i64 0, i64* %29, align 8
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 24
  store i64 0, i64* %31, align 8
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %33 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %32, i32 0, i32 23
  store i64 0, i64* %33, align 8
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 22
  store i64 0, i64* %35, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 21
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IB_QPT_RC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load i8*, i8** @IB_OPCODE_RC_SEND_LAST, align 8
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 20
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @IB_OPCODE_RC_SEND_LAST, align 8
  %46 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %47 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  br label %55

48:                                               ; preds = %3
  %49 = load i8*, i8** @IB_OPCODE_UC_SEND_LAST, align 8
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %51 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %50, i32 0, i32 20
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @IB_OPCODE_UC_SEND_LAST, align 8
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %54 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %53, i32 0, i32 19
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32, i32* @IB_OPCODE_RC_ACKNOWLEDGE, align 4
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 18
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %60 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %59, i32 0, i32 17
  store i64 0, i64* %60, align 8
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 16
  store i64 0, i64* %62, align 8
  %63 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %64 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %63, i32 0, i32 15
  store i64 0, i64* %64, align 8
  %65 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %66 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %65, i32 0, i32 14
  store i64 0, i64* %66, align 8
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 13
  store i64 0, i64* %68, align 8
  %69 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %70 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %69, i32 0, i32 12
  store i64 0, i64* %70, align 8
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 11
  store i64 0, i64* %72, align 8
  %73 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %74 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %73, i32 0, i32 10
  store i64 0, i64* %74, align 8
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %76 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 9
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @IB_MIG_MIGRATED, align 4
  %80 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %81 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %83 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %82, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %85 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %87 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %89 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = icmp ne %struct.TYPE_4__* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %55
  %96 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %97 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %101 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %55
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %107 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %110 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %109, i32 0, i32 1
  %111 = call i32 @atomic_set(i32* %110, i32 0)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
