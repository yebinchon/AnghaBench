; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_sa_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_device = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@port = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@send_handler = common dso_local global i32 0, align 4
@recv_handler = common dso_local global i32 0, align 4
@update_ib_cpi = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@ib_sa_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_sa_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_sa_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_sa_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %9 = call i32 @rdma_start_port(%struct.ib_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = call i32 @rdma_end_port(%struct.ib_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %13 = load i32, i32* @port, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = call i32 @struct_size(%struct.ib_sa_device* %12, i32 %13, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ib_sa_device* @kzalloc(i32 %18, i32 %19)
  store %struct.ib_sa_device* %20, %struct.ib_sa_device** %3, align 8
  %21 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %22 = icmp ne %struct.ib_sa_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %204

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %27 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %30 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %133, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %136

37:                                               ; preds = %31
  %38 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %39 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 7
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  br label %133

52:                                               ; preds = %37
  %53 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %54 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 6
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %64 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  %70 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %71 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %79 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @IB_QPT_GSI, align 4
  %91 = load i32, i32* @send_handler, align 4
  %92 = load i32, i32* @recv_handler, align 4
  %93 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %94 = call i32 @ib_register_mad_agent(%struct.ib_device* %86, i32 %89, i32 %90, i32* null, i32 0, i32 %91, i32 %92, %struct.ib_sa_device* %93, i32 0)
  %95 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %96 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  %102 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %103 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @IS_ERR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %52
  br label %178

113:                                              ; preds = %52
  %114 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %115 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = call i32 @INIT_WORK(i32* %120, i32 (i32*)* @update_sm_ah)
  %122 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %123 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* @update_ib_cpi, align 4
  %130 = call i32 @INIT_DELAYED_WORK(i32* %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %113, %51
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %31

136:                                              ; preds = %31
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  br label %201

140:                                              ; preds = %136
  %141 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %142 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %143 = call i32 @ib_set_client_data(%struct.ib_device* %141, i32* @sa_client, %struct.ib_sa_device* %142)
  %144 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %145 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %144, i32 0, i32 3
  %146 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %147 = load i32, i32* @ib_sa_event, align 4
  %148 = call i32 @INIT_IB_EVENT_HANDLER(i32* %145, %struct.ib_device* %146, i32 %147)
  %149 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %150 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %149, i32 0, i32 3
  %151 = call i32 @ib_register_event_handler(i32* %150)
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %174, %140
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = sub nsw i32 %154, %155
  %157 = icmp sle i32 %153, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %152
  %159 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %159, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %166 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %165, i32 0, i32 2
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = call i32 @update_sm_ah(i32* %171)
  br label %173

173:                                              ; preds = %164, %158
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %152

177:                                              ; preds = %152
  br label %204

178:                                              ; preds = %112
  br label %179

179:                                              ; preds = %199, %178
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %6, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  %187 = call i64 @rdma_cap_ib_sa(%struct.ib_device* %184, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %191 = getelementptr inbounds %struct.ib_sa_device, %struct.ib_sa_device* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ib_unregister_mad_agent(i32 %197)
  br label %199

199:                                              ; preds = %189, %183
  br label %179

200:                                              ; preds = %179
  br label %201

201:                                              ; preds = %200, %139
  %202 = load %struct.ib_sa_device*, %struct.ib_sa_device** %3, align 8
  %203 = call i32 @kfree(%struct.ib_sa_device* %202)
  br label %204

204:                                              ; preds = %201, %177, %23
  ret void
}

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #1

declare dso_local %struct.ib_sa_device* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ib_sa_device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @rdma_cap_ib_sa(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_mad_agent(%struct.ib_device*, i32, i32, i32*, i32, i32, i32, %struct.ib_sa_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @update_sm_ah(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_sa_device*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_event_handler(i32*) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @kfree(%struct.ib_sa_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
