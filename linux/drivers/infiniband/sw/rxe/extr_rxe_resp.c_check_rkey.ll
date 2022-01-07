; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_check_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.rxe_mem*, i32, i64 }
%struct.rxe_mem = type { i64 }
%struct.rxe_pkt_info = type { i32 }

@RXE_READ_MASK = common dso_local global i32 0, align 4
@RXE_WRITE_MASK = common dso_local global i32 0, align 4
@RXE_RETH_MASK = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@RXE_ATOMIC_MASK = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@RESPST_EXECUTE = common dso_local global i32 0, align 4
@RXE_WRITE_OR_SEND = common dso_local global i32 0, align 4
@lookup_remote = common dso_local global i32 0, align 4
@RESPST_ERR_RKEY_VIOLATION = common dso_local global i32 0, align 4
@RXE_MEM_STATE_FREE = common dso_local global i64 0, align 8
@RESPST_ERR_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @check_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rkey(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_pkt_info*, align 8
  %6 = alloca %struct.rxe_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %5, align 8
  store %struct.rxe_mem* null, %struct.rxe_mem** %6, align 8
  %14 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %15 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %18 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RXE_READ_MASK, align 4
  %21 = load i32, i32* @RXE_WRITE_MASK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %2
  %26 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %27 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RXE_RETH_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %34 = call i32 @reth_va(%struct.rxe_pkt_info* %33)
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %39 = call i32 @reth_rkey(%struct.rxe_pkt_info* %38)
  %40 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %41 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %44 = call i64 @reth_len(%struct.rxe_pkt_info* %43)
  %45 = trunc i64 %44 to i32
  %46 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %47 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %50 = call i64 @reth_len(%struct.rxe_pkt_info* %49)
  %51 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %32, %25
  %55 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %56 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RXE_READ_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %13, align 4
  br label %92

67:                                               ; preds = %2
  %68 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %69 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RXE_ATOMIC_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %76 = call i32 @atmeth_va(%struct.rxe_pkt_info* %75)
  %77 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %78 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 %76, i32* %79, align 8
  %80 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %81 = call i32 @atmeth_rkey(%struct.rxe_pkt_info* %80)
  %82 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %83 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %86 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 4, i32* %87, align 4
  %88 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  store i32 %88, i32* %13, align 4
  br label %91

89:                                               ; preds = %67
  %90 = load i32, i32* @RESPST_EXECUTE, align 4
  store i32 %90, i32* %3, align 4
  br label %217

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %94 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RXE_READ_MASK, align 4
  %97 = load i32, i32* @RXE_WRITE_OR_SEND, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %92
  %102 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %103 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RXE_RETH_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %110 = call i64 @reth_len(%struct.rxe_pkt_info* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @RESPST_EXECUTE, align 4
  store i32 %113, i32* %3, align 4
  br label %217

114:                                              ; preds = %108, %101, %92
  %115 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %116 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %7, align 4
  %119 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %120 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %8, align 4
  %123 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %124 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %9, align 4
  %127 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %128 = call i32 @payload_size(%struct.rxe_pkt_info* %127)
  store i32 %128, i32* %10, align 4
  %129 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %130 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @lookup_remote, align 4
  %135 = call %struct.rxe_mem* @lookup_mem(i32 %131, i32 %132, i32 %133, i32 %134)
  store %struct.rxe_mem* %135, %struct.rxe_mem** %6, align 8
  %136 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %137 = icmp ne %struct.rxe_mem* %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %114
  %139 = load i32, i32* @RESPST_ERR_RKEY_VIOLATION, align 4
  store i32 %139, i32* %12, align 4
  br label %209

140:                                              ; preds = %114
  %141 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %142 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RXE_MEM_STATE_FREE, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* @RESPST_ERR_RKEY_VIOLATION, align 4
  store i32 %150, i32* %12, align 4
  br label %209

151:                                              ; preds = %140
  %152 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i64 @mem_check_range(%struct.rxe_mem* %152, i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* @RESPST_ERR_RKEY_VIOLATION, align 4
  store i32 %158, i32* %12, align 4
  br label %209

159:                                              ; preds = %151
  %160 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %161 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @RXE_WRITE_MASK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %198

166:                                              ; preds = %159
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %176 = call i32 @bth_pad(%struct.rxe_pkt_info* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174, %170
  %179 = load i32, i32* @RESPST_ERR_LENGTH, align 4
  store i32 %179, i32* %12, align 4
  br label %209

180:                                              ; preds = %174
  br label %197

181:                                              ; preds = %166
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @RESPST_ERR_LENGTH, align 4
  store i32 %186, i32* %12, align 4
  br label %209

187:                                              ; preds = %181
  %188 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %5, align 8
  %189 = call i32 @bth_pad(%struct.rxe_pkt_info* %188)
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 0, %190
  %192 = and i32 3, %191
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @RESPST_ERR_LENGTH, align 4
  store i32 %195, i32* %12, align 4
  br label %209

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %180
  br label %198

198:                                              ; preds = %197, %159
  %199 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %200 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load %struct.rxe_mem*, %struct.rxe_mem** %201, align 8
  %203 = call i32 @WARN_ON_ONCE(%struct.rxe_mem* %202)
  %204 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %205 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %206 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  store %struct.rxe_mem* %204, %struct.rxe_mem** %207, align 8
  %208 = load i32, i32* @RESPST_EXECUTE, align 4
  store i32 %208, i32* %3, align 4
  br label %217

209:                                              ; preds = %194, %185, %178, %157, %149, %138
  %210 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %211 = icmp ne %struct.rxe_mem* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %214 = call i32 @rxe_drop_ref(%struct.rxe_mem* %213)
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %198, %112, %89
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @reth_va(%struct.rxe_pkt_info*) #1

declare dso_local i32 @reth_rkey(%struct.rxe_pkt_info*) #1

declare dso_local i64 @reth_len(%struct.rxe_pkt_info*) #1

declare dso_local i32 @atmeth_va(%struct.rxe_pkt_info*) #1

declare dso_local i32 @atmeth_rkey(%struct.rxe_pkt_info*) #1

declare dso_local i32 @payload_size(%struct.rxe_pkt_info*) #1

declare dso_local %struct.rxe_mem* @lookup_mem(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mem_check_range(%struct.rxe_mem*, i32, i32) #1

declare dso_local i32 @bth_pad(%struct.rxe_pkt_info*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.rxe_mem*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
