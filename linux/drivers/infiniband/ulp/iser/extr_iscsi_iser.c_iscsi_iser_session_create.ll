; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { i32, i64, i32, %struct.ib_conn, i32 }
%struct.ib_conn = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.Scsi_Host = type { i32, i32, i64, i8*, i32, i64, i64, i32, i32, i32 }

@iscsi_iser_sht = common dso_local global i32 0, align 4
@iscsi_iser_scsi_transport = common dso_local global i32 0, align 4
@iscsi_max_lun = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@ISER_CONN_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"iser conn %p already started teardown\0A\00", align 1
@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_CRC = common dso_local global i32 0, align 4
@IB_DEVICE_SG_GAPS_REG = common dso_local global i32 0, align 4
@MASK_4K = common dso_local global i32 0, align 4
@ISER_DEF_XMIT_CMDS_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@iser_max_sectors = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"iser_conn %p, sg_tablesize %u, max_sectors %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"max_sectors was reduced from %u to %u\0A\00", align 1
@iscsi_iser_transport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_session* (%struct.iscsi_endpoint*, i32, i32, i32)* @iscsi_iser_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_session* @iscsi_iser_session_create(%struct.iscsi_endpoint* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca %struct.iscsi_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_cls_session*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.iser_conn*, align 8
  %13 = alloca %struct.ib_conn*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iser_conn* null, %struct.iser_conn** %12, align 8
  %17 = call %struct.Scsi_Host* @iscsi_host_alloc(i32* @iscsi_iser_sht, i32 0, i32 0)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %11, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %19 = icmp ne %struct.Scsi_Host* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %186

21:                                               ; preds = %4
  %22 = load i32, i32* @iscsi_iser_scsi_transport, align 4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @iscsi_max_lun, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  store i32 16, i32* %36, align 8
  %37 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %38 = icmp ne %struct.iscsi_endpoint* %37, null
  br i1 %38, label %39, label %125

39:                                               ; preds = %21
  %40 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %6, align 8
  %41 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %40, i32 0, i32 0
  %42 = load %struct.iser_conn*, %struct.iser_conn** %41, align 8
  store %struct.iser_conn* %42, %struct.iser_conn** %12, align 8
  %43 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %44 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @u16, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %51 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @min_t(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %57 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %56, i32 0, i32 2
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %60 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ISER_CONN_UP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %39
  %65 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %66 = call i32 @iser_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %65)
  %67 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %68 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %67, i32 0, i32 2
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %183

70:                                               ; preds = %39
  %71 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %72 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %71, i32 0, i32 3
  store %struct.ib_conn* %72, %struct.ib_conn** %13, align 8
  %73 = load %struct.ib_conn*, %struct.ib_conn** %13, align 8
  %74 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.ib_device*, %struct.ib_device** %76, align 8
  store %struct.ib_device* %77, %struct.ib_device** %14, align 8
  %78 = load %struct.ib_conn*, %struct.ib_conn** %13, align 8
  %79 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %70
  %83 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %84 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %16, align 4
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @iser_dif_prot_caps(i32 %88)
  %90 = call i32 @scsi_host_set_prot(%struct.Scsi_Host* %87, i32 %89)
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %92 = load i32, i32* @SHOST_DIX_GUARD_IP, align 4
  %93 = load i32, i32* @SHOST_DIX_GUARD_CRC, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @scsi_host_set_guard(%struct.Scsi_Host* %91, i32 %94)
  br label %96

96:                                               ; preds = %82, %70
  %97 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %98 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IB_DEVICE_SG_GAPS_REG, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* @MASK_4K, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %96
  %110 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %111 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %112 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @iscsi_host_add(%struct.Scsi_Host* %110, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %119 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %118, i32 0, i32 2
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %183

121:                                              ; preds = %109
  %122 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %123 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %122, i32 0, i32 2
  %124 = call i32 @mutex_unlock(i32* %123)
  br label %137

125:                                              ; preds = %21
  %126 = load i32, i32* @u16, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ISER_DEF_XMIT_CMDS_MAX, align 4
  %129 = call i8* @min_t(i32 %126, i32 %127, i32 %128)
  %130 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %131 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %133 = call i64 @iscsi_host_add(%struct.Scsi_Host* %132, i32* null)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %183

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %139 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = mul nsw i32 %140, %141
  %143 = ashr i32 %142, 9
  store i32 %143, i32* %15, align 4
  %144 = load i64, i64* @iser_max_sectors, align 8
  %145 = load i32, i32* %15, align 4
  %146 = call i64 @min(i64 %144, i32 %145)
  %147 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %148 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = load %struct.iser_conn*, %struct.iser_conn** %12, align 8
  %150 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %151 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %154 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @iser_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.iser_conn* %149, i32 %152, i64 %155)
  %157 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %158 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @iser_max_sectors, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %137
  %163 = load i64, i64* @iser_max_sectors, align 8
  %164 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %165 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @iser_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %163, i64 %166)
  br label %168

168:                                              ; preds = %162, %137
  %169 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %170 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %171 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call %struct.iscsi_cls_session* @iscsi_session_setup(i32* @iscsi_iser_transport, %struct.Scsi_Host* %169, i8* %172, i32 0, i32 4, i32 %173, i32 0)
  store %struct.iscsi_cls_session* %174, %struct.iscsi_cls_session** %10, align 8
  %175 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %176 = icmp ne %struct.iscsi_cls_session* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %168
  br label %180

178:                                              ; preds = %168
  %179 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  store %struct.iscsi_cls_session* %179, %struct.iscsi_cls_session** %5, align 8
  br label %186

180:                                              ; preds = %177
  %181 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %182 = call i32 @iscsi_host_remove(%struct.Scsi_Host* %181)
  br label %183

183:                                              ; preds = %180, %135, %117, %64
  %184 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %185 = call i32 @iscsi_host_free(%struct.Scsi_Host* %184)
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %5, align 8
  br label %186

186:                                              ; preds = %183, %178, %20
  %187 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  ret %struct.iscsi_cls_session* %187
}

declare dso_local %struct.Scsi_Host* @iscsi_host_alloc(i32*, i32, i32) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iser_err(i8*, %struct.iser_conn*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scsi_host_set_prot(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @iser_dif_prot_caps(i32) #1

declare dso_local i32 @scsi_host_set_guard(%struct.Scsi_Host*, i32) #1

declare dso_local i64 @iscsi_host_add(%struct.Scsi_Host*, i32*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @iser_dbg(i8*, %struct.iser_conn*, i32, i64) #1

declare dso_local i32 @iser_warn(i8*, i64, i64) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_session_setup(i32*, %struct.Scsi_Host*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @iscsi_host_remove(%struct.Scsi_Host*) #1

declare dso_local i32 @iscsi_host_free(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
