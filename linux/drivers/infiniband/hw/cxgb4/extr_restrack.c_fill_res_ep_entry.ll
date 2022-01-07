; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_res_ep_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_restrack.c_fill_res_ep_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rdma_restrack_entry = type { i32 }
%struct.rdma_cm_id = type { i32 }
%struct.nlattr = type { i32 }
%struct.c4iw_ep_common = type { i64, i32, i32, i32 }
%struct.c4iw_listen_ep = type { i64, i64, %struct.c4iw_ep_common }
%struct.c4iw_ep = type { i64, i64, i64, i64, i64, i32, %struct.c4iw_ep_common }
%struct.iw_cm_id = type { i64 }
%union.union_ep = type { %struct.c4iw_ep }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DRIVER = common dso_local global i32 0, align 4
@LISTEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"backlog\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hwtid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ird\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"emss\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"atid\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)* @fill_res_ep_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_res_ep_entry(%struct.sk_buff* %0, %struct.rdma_restrack_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rdma_restrack_entry*, align 8
  %6 = alloca %struct.rdma_cm_id*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.c4iw_ep_common*, align 8
  %9 = alloca %struct.c4iw_listen_ep*, align 8
  %10 = alloca %struct.c4iw_ep*, align 8
  %11 = alloca %struct.iw_cm_id*, align 8
  %12 = alloca %union.union_ep*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.rdma_restrack_entry* %1, %struct.rdma_restrack_entry** %5, align 8
  %13 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %5, align 8
  %14 = call %struct.rdma_cm_id* @rdma_res_to_id(%struct.rdma_restrack_entry* %13)
  store %struct.rdma_cm_id* %14, %struct.rdma_cm_id** %6, align 8
  store %struct.c4iw_listen_ep* null, %struct.c4iw_listen_ep** %9, align 8
  store %struct.c4iw_ep* null, %struct.c4iw_ep** %10, align 8
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %6, align 8
  %16 = call %struct.iw_cm_id* @rdma_iw_cm_id(%struct.rdma_cm_id* %15)
  store %struct.iw_cm_id* %16, %struct.iw_cm_id** %11, align 8
  %17 = load %struct.iw_cm_id*, %struct.iw_cm_id** %11, align 8
  %18 = icmp ne %struct.iw_cm_id* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %186

20:                                               ; preds = %2
  %21 = load %struct.iw_cm_id*, %struct.iw_cm_id** %11, align 8
  %22 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.c4iw_ep_common*
  store %struct.c4iw_ep_common* %24, %struct.c4iw_ep_common** %8, align 8
  %25 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %26 = icmp ne %struct.c4iw_ep_common* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %186

28:                                               ; preds = %20
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %union.union_ep* @kcalloc(i32 1, i32 72, i32 %29)
  store %union.union_ep* %30, %union.union_ep** %12, align 8
  %31 = load %union.union_ep*, %union.union_ep** %12, align 8
  %32 = icmp ne %union.union_ep* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %186

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @RDMA_NLDEV_ATTR_DRIVER, align 4
  %37 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %35, i32 %36)
  store %struct.nlattr* %37, %struct.nlattr** %7, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %181

41:                                               ; preds = %34
  %42 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %43 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %42, i32 0, i32 3
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %46 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LISTEN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = load %union.union_ep*, %union.union_ep** %12, align 8
  %52 = bitcast %union.union_ep* %51 to %struct.c4iw_listen_ep*
  %53 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %54 = bitcast %struct.c4iw_ep_common* %53 to %struct.c4iw_listen_ep*
  %55 = bitcast %struct.c4iw_listen_ep* %52 to i8*
  %56 = bitcast %struct.c4iw_listen_ep* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 40, i1 false)
  %57 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %58 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %57, i32 0, i32 3
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %union.union_ep*, %union.union_ep** %12, align 8
  %61 = bitcast %union.union_ep* %60 to %struct.c4iw_listen_ep*
  store %struct.c4iw_listen_ep* %61, %struct.c4iw_listen_ep** %9, align 8
  %62 = load %struct.c4iw_listen_ep*, %struct.c4iw_listen_ep** %9, align 8
  %63 = getelementptr inbounds %struct.c4iw_listen_ep, %struct.c4iw_listen_ep* %62, i32 0, i32 2
  store %struct.c4iw_ep_common* %63, %struct.c4iw_ep_common** %8, align 8
  br label %78

64:                                               ; preds = %41
  %65 = load %union.union_ep*, %union.union_ep** %12, align 8
  %66 = bitcast %union.union_ep* %65 to %struct.c4iw_ep*
  %67 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %68 = bitcast %struct.c4iw_ep_common* %67 to %struct.c4iw_ep*
  %69 = bitcast %struct.c4iw_ep* %66 to i8*
  %70 = bitcast %struct.c4iw_ep* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 72, i1 false)
  %71 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %72 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %71, i32 0, i32 3
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %union.union_ep*, %union.union_ep** %12, align 8
  %75 = bitcast %union.union_ep* %74 to %struct.c4iw_ep*
  store %struct.c4iw_ep* %75, %struct.c4iw_ep** %10, align 8
  %76 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %77 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %76, i32 0, i32 6
  store %struct.c4iw_ep_common* %77, %struct.c4iw_ep_common** %8, align 8
  br label %78

78:                                               ; preds = %64, %50
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %81 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %177

86:                                               ; preds = %78
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %89 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %177

94:                                               ; preds = %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %97 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %177

102:                                              ; preds = %94
  %103 = load %struct.c4iw_ep_common*, %struct.c4iw_ep_common** %8, align 8
  %104 = getelementptr inbounds %struct.c4iw_ep_common, %struct.c4iw_ep_common* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LISTEN, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = load %struct.c4iw_listen_ep*, %struct.c4iw_listen_ep** %9, align 8
  %111 = getelementptr inbounds %struct.c4iw_listen_ep, %struct.c4iw_listen_ep* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %177

116:                                              ; preds = %108
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load %struct.c4iw_listen_ep*, %struct.c4iw_listen_ep** %9, align 8
  %119 = getelementptr inbounds %struct.c4iw_listen_ep, %struct.c4iw_listen_ep* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %177

124:                                              ; preds = %116
  br label %171

125:                                              ; preds = %102
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %128 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %177

133:                                              ; preds = %125
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %136 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %177

141:                                              ; preds = %133
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %144 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %177

149:                                              ; preds = %141
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %152 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %177

157:                                              ; preds = %149
  %158 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %159 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %165 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @rdma_nl_put_driver_u32(%struct.sk_buff* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %177

170:                                              ; preds = %162, %157
  br label %171

171:                                              ; preds = %170, %124
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %174 = call i32 @nla_nest_end(%struct.sk_buff* %172, %struct.nlattr* %173)
  %175 = load %union.union_ep*, %union.union_ep** %12, align 8
  %176 = call i32 @kfree(%union.union_ep* %175)
  store i32 0, i32* %3, align 4
  br label %186

177:                                              ; preds = %169, %156, %148, %140, %132, %123, %115, %101, %93, %85
  %178 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %179 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %180 = call i32 @nla_nest_cancel(%struct.sk_buff* %178, %struct.nlattr* %179)
  br label %181

181:                                              ; preds = %177, %40
  %182 = load %union.union_ep*, %union.union_ep** %12, align 8
  %183 = call i32 @kfree(%union.union_ep* %182)
  %184 = load i32, i32* @EMSGSIZE, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %171, %33, %27, %19
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.rdma_cm_id* @rdma_res_to_id(%struct.rdma_restrack_entry*) #1

declare dso_local %struct.iw_cm_id* @rdma_iw_cm_id(%struct.rdma_cm_id*) #1

declare dso_local %union.union_ep* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @rdma_nl_put_driver_u32(%struct.sk_buff*, i8*, i64) #1

declare dso_local i64 @rdma_nl_put_driver_u64_hex(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @kfree(%union.union_ep*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
