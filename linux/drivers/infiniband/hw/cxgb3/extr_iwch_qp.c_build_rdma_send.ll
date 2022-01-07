; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t3_wr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_6__*, i64*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.ib_send_wr = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@T3_SEND_WITH_SE = common dso_local global i32 0, align 4
@T3_SEND = common dso_local global i32 0, align 4
@T3_SEND_WITH_SE_INV = common dso_local global i32 0, align 4
@T3_SEND_WITH_INV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@T3_MAX_SGE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t3_wr*, %struct.ib_send_wr*, i32*)* @build_rdma_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_send(%union.t3_wr* %0, %struct.ib_send_wr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.t3_wr*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %union.t3_wr* %0, %union.t3_wr** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %11 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %60 [
    i32 129, label %13
    i32 128, label %34
  ]

13:                                               ; preds = %3
  %14 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %15 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, i32* @T3_SEND_WITH_SE, align 4
  %22 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %23 = bitcast %union.t3_wr* %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 8
  br label %30

25:                                               ; preds = %13
  %26 = load i32, i32* @T3_SEND, align 4
  %27 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %28 = bitcast %union.t3_wr* %27 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %32 = bitcast %union.t3_wr* %31 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  store i8* null, i8** %33, align 8
  br label %63

34:                                               ; preds = %3
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @T3_SEND_WITH_SE_INV, align 4
  %43 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %44 = bitcast %union.t3_wr* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 8
  br label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @T3_SEND_WITH_INV, align 4
  %48 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %49 = bitcast %union.t3_wr* %48 to %struct.TYPE_8__*
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @cpu_to_be32(i64 %55)
  %57 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %58 = bitcast %union.t3_wr* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  store i8* %56, i8** %59, align 8
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %195

63:                                               ; preds = %51, %30
  %64 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %65 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @T3_MAX_SGE, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %195

72:                                               ; preds = %63
  %73 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %74 = bitcast %union.t3_wr* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 0, i64* %77, align 8
  %78 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %79 = bitcast %union.t3_wr* %78 to %struct.TYPE_8__*
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  store i64 0, i64* %82, align 8
  %83 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %84 = bitcast %union.t3_wr* %83 to %struct.TYPE_8__*
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  store i64 0, i64* %87, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %172, %72
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %175

94:                                               ; preds = %88
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %95, %103
  %105 = load i64, i64* %9, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %94
  %108 = load i32, i32* @EMSGSIZE, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %195

110:                                              ; preds = %94
  %111 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %112 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %111, i32 0, i32 3
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %9, align 8
  %121 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %122 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %121, i32 0, i32 3
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @cpu_to_be32(i64 %128)
  %130 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %131 = bitcast %union.t3_wr* %130 to %struct.TYPE_8__*
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  store i8* %129, i8** %137, align 8
  %138 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %139 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @cpu_to_be32(i64 %145)
  %147 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %148 = bitcast %union.t3_wr* %147 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i8* %146, i8** %154, align 8
  %155 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %155, i32 0, i32 3
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @cpu_to_be64(i32 %162)
  %164 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %165 = bitcast %union.t3_wr* %164 to %struct.TYPE_8__*
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %163, i32* %171, align 8
  br label %172

172:                                              ; preds = %110
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %88

175:                                              ; preds = %88
  %176 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %177 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = call i8* @cpu_to_be32(i64 %179)
  %181 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %182 = bitcast %union.t3_wr* %181 to %struct.TYPE_8__*
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i8* %180, i8** %183, align 8
  %184 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %185 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 %186, 1
  %188 = add nsw i32 4, %187
  %189 = load i32*, i32** %7, align 8
  store i32 %188, i32* %189, align 4
  %190 = load i64, i64* %9, align 8
  %191 = call i8* @cpu_to_be32(i64 %190)
  %192 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %193 = bitcast %union.t3_wr* %192 to %struct.TYPE_8__*
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %175, %107, %69, %60
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
