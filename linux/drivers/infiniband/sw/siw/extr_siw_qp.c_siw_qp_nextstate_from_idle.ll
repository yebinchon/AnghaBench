; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.siw_qp_attrs = type { i32, i32, i32, i32, i32 }

@SIW_MPA_CRC = common dso_local global i32 0, align 4
@SIW_QP_ATTR_LLP_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no socket\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SIW_QP_ATTR_MPA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no MPA\0A\00", align 1
@RDMAP_UNTAGGED_QN_SEND = common dso_local global i64 0, align 8
@RDMAP_UNTAGGED_QN_RDMA_READ = common dso_local global i64 0, align 8
@RDMAP_UNTAGGED_QN_TERMINATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"enter RTS: crc=%s, ord=%u, ird=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*, %struct.siw_qp_attrs*, i32)* @siw_qp_nextstate_from_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_nextstate_from_idle(%struct.siw_qp* %0, %struct.siw_qp_attrs* %1, i32 %2) #0 {
  %4 = alloca %struct.siw_qp*, align 8
  %5 = alloca %struct.siw_qp_attrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %4, align 8
  store %struct.siw_qp_attrs* %1, %struct.siw_qp_attrs** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %9 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %139 [
    i32 128, label %11
    i32 129, label %121
  ]

11:                                               ; preds = %3
  %12 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %13 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SIW_MPA_CRC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %20 = call i32 @siw_qp_enable_crc(%struct.siw_qp* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %140

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SIW_QP_ATTR_LLP_HANDLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %32 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %140

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SIW_QP_ATTR_MPA, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %42 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %140

45:                                               ; preds = %35
  %46 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %47 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %53 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @RDMAP_UNTAGGED_QN_RDMA_READ, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %59 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RDMAP_UNTAGGED_QN_TERMINATE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %65 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 1, i32* %69, align 4
  %70 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %71 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @RDMAP_UNTAGGED_QN_RDMA_READ, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 1, i32* %75, align 4
  %76 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %77 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @RDMAP_UNTAGGED_QN_TERMINATE, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 1, i32* %81, align 4
  %82 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %83 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %84 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %87 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @siw_qp_readq_init(%struct.siw_qp* %82, i32 %85, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %45
  br label %140

93:                                               ; preds = %45
  %94 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %95 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %98 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %101 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 128, i32* %102, align 8
  %103 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %104 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %5, align 8
  %105 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SIW_MPA_CRC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %112 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %113 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %117 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 %115, i32 %119)
  br label %140

121:                                              ; preds = %3
  %122 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %123 = call i32 @siw_rq_flush(%struct.siw_qp* %122)
  %124 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %125 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 129, i32* %126, align 8
  %127 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %128 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %133 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @siw_cep_put(i32* %134)
  %136 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %137 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %131, %121
  br label %140

139:                                              ; preds = %3
  br label %140

140:                                              ; preds = %139, %138, %93, %92, %40, %30, %23
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @siw_qp_enable_crc(%struct.siw_qp*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, ...) #1

declare dso_local i32 @siw_qp_readq_init(%struct.siw_qp*, i32, i32) #1

declare dso_local i32 @siw_rq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_cep_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
