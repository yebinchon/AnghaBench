; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t3_wr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_7__*, i8*, i8*, i64*, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.ib_send_wr = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32 }

@T3_MAX_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@T3_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WR_RDMA_WRITE_WITH_IMM = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t3_wr*, %struct.ib_send_wr*, i32*)* @build_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_write(%union.t3_wr* %0, %struct.ib_send_wr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.t3_wr*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.t3_wr* %0, %union.t3_wr** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %11 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @T3_MAX_SGE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %190

18:                                               ; preds = %3
  %19 = load i32, i32* @T3_RDMA_WRITE, align 4
  %20 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %21 = bitcast %union.t3_wr* %20 to %struct.TYPE_9__*
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 8
  %23 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %24 = bitcast %union.t3_wr* %23 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %29 = bitcast %union.t3_wr* %28 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 0, i64* %32, align 8
  %33 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %34 = bitcast %union.t3_wr* %33 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %39 = call %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr* %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %44 = bitcast %union.t3_wr* %43 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %47 = call %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr* %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be64(i32 %49)
  %51 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %52 = bitcast %union.t3_wr* %51 to %struct.TYPE_9__*
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IB_WR_RDMA_WRITE_WITH_IMM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %18
  store i32 4, i32* %9, align 4
  %60 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %61 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %65 = bitcast %union.t3_wr* %64 to %struct.TYPE_9__*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i8* %63, i8** %69, align 8
  %70 = call i8* @cpu_to_be32(i32 0)
  %71 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %72 = bitcast %union.t3_wr* %71 to %struct.TYPE_9__*
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i8* %70, i8** %76, align 8
  %77 = call i8* @cpu_to_be32(i32 0)
  %78 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %79 = bitcast %union.t3_wr* %78 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load i32*, i32** %7, align 8
  store i32 6, i32* %81, align 4
  br label %184

82:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %167, %82
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %170

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %92 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %90, %98
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @EMSGSIZE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %190

105:                                              ; preds = %89
  %106 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %107 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %106, i32 0, i32 2
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %116, i32 0, i32 2
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_be32(i32 %123)
  %125 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %126 = bitcast %union.t3_wr* %125 to %struct.TYPE_9__*
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  store i8* %124, i8** %132, align 8
  %133 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %134 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @cpu_to_be32(i32 %140)
  %142 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %143 = bitcast %union.t3_wr* %142 to %struct.TYPE_9__*
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i8* %141, i8** %149, align 8
  %150 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %151 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @cpu_to_be64(i32 %157)
  %159 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %160 = bitcast %union.t3_wr* %159 to %struct.TYPE_9__*
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i8* %158, i8** %166, align 8
  br label %167

167:                                              ; preds = %105
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %83

170:                                              ; preds = %83
  %171 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %172 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @cpu_to_be32(i32 %173)
  %175 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %176 = bitcast %union.t3_wr* %175 to %struct.TYPE_9__*
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  %178 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %179 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 %180, 1
  %182 = add nsw i32 5, %181
  %183 = load i32*, i32** %7, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %170, %59
  %185 = load i32, i32* %9, align 4
  %186 = call i8* @cpu_to_be32(i32 %185)
  %187 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %188 = bitcast %union.t3_wr* %187 to %struct.TYPE_9__*
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %184, %102, %15
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
