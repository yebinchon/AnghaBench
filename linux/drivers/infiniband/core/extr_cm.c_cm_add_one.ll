; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cm_device = type { i32, i32, %struct.cm_device**, i32, i32, i32, %struct.cm_device*, i64, i32, %struct.ib_device* }
%struct.cm_port = type { i32, i32, %struct.cm_port**, i32, i32, i32, %struct.cm_port*, i64, i32, %struct.ib_device* }
%struct.ib_mad_reg_req = type { i32, i32, i32 }
%struct.ib_port_modify = type { i64, i64 }

@IB_CM_CLASS_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_CM = common dso_local global i32 0, align 4
@IB_PORT_CM_SUP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_SEND = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@cm_send_handler = common dso_local global i32 0, align 4
@cm_recv_handler = common dso_local global i32 0, align 4
@cm_client = common dso_local global i32 0, align 4
@cm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @cm_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.cm_device*, align 8
  %4 = alloca %struct.cm_port*, align 8
  %5 = alloca %struct.ib_mad_reg_req, align 4
  %6 = alloca %struct.ib_port_modify, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %11 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 1
  %13 = load i32, i32* @IB_CM_CLASS_VERSION, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 2
  %15 = load i32, i32* @IB_MGMT_CLASS_CM, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 1
  %18 = load i64, i64* @IB_PORT_CM_SUP, align 8
  store i64 %18, i64* %17, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %20 = bitcast %struct.cm_device* %19 to %struct.cm_port*
  %21 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @struct_size(%struct.cm_port* %20, %struct.cm_port* %21, i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.cm_port* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast %struct.cm_port* %27 to %struct.cm_device*
  store %struct.cm_device* %28, %struct.cm_device** %3, align 8
  %29 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %30 = icmp ne %struct.cm_device* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %191

32:                                               ; preds = %1
  %33 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %34 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %35 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %34, i32 0, i32 9
  store %struct.ib_device* %33, %struct.ib_device** %35, align 8
  %36 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %41 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 8
  %42 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %43 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @IB_MGMT_METHOD_SEND, align 4
  %45 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_bit(i32 %44, i32 %46)
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %120, %32
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %51 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %49, %52
  br i1 %53, label %54, label %123

54:                                               ; preds = %48
  %55 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @rdma_cap_ib_cm(%struct.ib_device* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %120

60:                                               ; preds = %54
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.cm_port* @kzalloc(i32 64, i32 %61)
  store %struct.cm_port* %62, %struct.cm_port** %4, align 8
  %63 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %64 = icmp ne %struct.cm_port* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %147

66:                                               ; preds = %60
  %67 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %68 = bitcast %struct.cm_port* %67 to %struct.cm_device*
  %69 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %70 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %69, i32 0, i32 2
  %71 = load %struct.cm_device**, %struct.cm_device*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cm_device*, %struct.cm_device** %71, i64 %74
  store %struct.cm_device* %68, %struct.cm_device** %75, align 8
  %76 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %77 = bitcast %struct.cm_device* %76 to %struct.cm_port*
  %78 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %79 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %78, i32 0, i32 6
  store %struct.cm_port* %77, %struct.cm_port** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %82 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %84 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %83, i32 0, i32 5
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %87 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %86, i32 0, i32 4
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %90 = call i32 @cm_create_port_fs(%struct.cm_port* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %66
  br label %147

94:                                               ; preds = %66
  %95 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @IB_QPT_GSI, align 4
  %98 = load i32, i32* @cm_send_handler, align 4
  %99 = load i32, i32* @cm_recv_handler, align 4
  %100 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %101 = call i32 @ib_register_mad_agent(%struct.ib_device* %95, i32 %96, i32 %97, %struct.ib_mad_reg_req* %5, i32 0, i32 %98, i32 %99, %struct.cm_port* %100, i32 0)
  %102 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %103 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %105 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @IS_ERR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %144

110:                                              ; preds = %94
  %111 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @ib_modify_port(%struct.ib_device* %111, i32 %112, i32 0, %struct.ib_port_modify* %6)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %139

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %59
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %48

123:                                              ; preds = %48
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %187

127:                                              ; preds = %123
  %128 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %129 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %130 = bitcast %struct.cm_device* %129 to %struct.cm_port*
  %131 = call i32 @ib_set_client_data(%struct.ib_device* %128, i32* @cm_client, %struct.cm_port* %130)
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @write_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), i64 %132)
  %134 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %135 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %134, i32 0, i32 3
  %136 = call i32 @list_add_tail(i32* %135, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 1))
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @write_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cm, i32 0, i32 0), i64 %137)
  br label %191

139:                                              ; preds = %116
  %140 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %141 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ib_unregister_mad_agent(i32 %142)
  br label %144

144:                                              ; preds = %139, %109
  %145 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %146 = call i32 @cm_remove_port_fs(%struct.cm_port* %145)
  br label %147

147:                                              ; preds = %144, %93, %65
  %148 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load i64, i64* @IB_PORT_CM_SUP, align 8
  %150 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  store i64 %149, i64* %150, align 8
  %151 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %152 = call i32 @kfree(%struct.cm_port* %151)
  br label %153

153:                                              ; preds = %163, %162, %147
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %153
  %158 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @rdma_cap_ib_cm(%struct.ib_device* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  br label %153

163:                                              ; preds = %157
  %164 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %165 = getelementptr inbounds %struct.cm_device, %struct.cm_device* %164, i32 0, i32 2
  %166 = load %struct.cm_device**, %struct.cm_device*** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.cm_device*, %struct.cm_device** %166, i64 %169
  %171 = load %struct.cm_device*, %struct.cm_device** %170, align 8
  %172 = bitcast %struct.cm_device* %171 to %struct.cm_port*
  store %struct.cm_port* %172, %struct.cm_port** %4, align 8
  %173 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %174 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %175 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @ib_modify_port(%struct.ib_device* %173, i32 %176, i32 0, %struct.ib_port_modify* %6)
  %178 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %179 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ib_unregister_mad_agent(i32 %180)
  %182 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %183 = call i32 @cm_remove_port_fs(%struct.cm_port* %182)
  %184 = load %struct.cm_port*, %struct.cm_port** %4, align 8
  %185 = call i32 @kfree(%struct.cm_port* %184)
  br label %153

186:                                              ; preds = %153
  br label %187

187:                                              ; preds = %186, %126
  %188 = load %struct.cm_device*, %struct.cm_device** %3, align 8
  %189 = bitcast %struct.cm_device* %188 to %struct.cm_port*
  %190 = call i32 @kfree(%struct.cm_port* %189)
  br label %191

191:                                              ; preds = %187, %127, %31
  ret void
}

declare dso_local %struct.cm_port* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.cm_port*, %struct.cm_port*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rdma_cap_ib_cm(%struct.ib_device*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cm_create_port_fs(%struct.cm_port*) #1

declare dso_local i32 @ib_register_mad_agent(%struct.ib_device*, i32, i32, %struct.ib_mad_reg_req*, i32, i32, i32, %struct.cm_port*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @ib_modify_port(%struct.ib_device*, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.cm_port*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_unregister_mad_agent(i32) #1

declare dso_local i32 @cm_remove_port_fs(%struct.cm_port*) #1

declare dso_local i32 @kfree(%struct.cm_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
