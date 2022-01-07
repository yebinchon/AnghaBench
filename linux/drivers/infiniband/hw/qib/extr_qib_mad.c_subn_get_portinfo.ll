; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_portinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i64, i64, i64, i32, i32 }
%struct.ib_device = type { i32 }
%struct.qib_devdata = type { i32 (i32)*, i32 (i32)*, i32 (%struct.qib_pportdata*, i32)*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qib_ibport }
%struct.qib_ibport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.ib_port_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MTU_4096 = common dso_local global i8* null, align 8
@IB_MTU_2048 = common dso_local global i32 0, align 4
@IB_MTU_1024 = common dso_local global i32 0, align 4
@IB_MTU_512 = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@QIB_IB_CFG_VL_HIGH_CAP = common dso_local global i32 0, align 4
@QIB_IB_CFG_VL_LOW_CAP = common dso_local global i32 0, align 4
@qib_ibmtu = common dso_local global i8* null, align 8
@QIB_IB_CFG_OP_VLS = common dso_local global i32 0, align 4
@QIB_GUIDS_PER_PORT = common dso_local global i32 0, align 4
@IB_PORT_LINK_LATENCY_SUP = common dso_local global i32 0, align 4
@QIB_IB_CFG_LINKLATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_portinfo(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_pportdata*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.ib_port_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %17 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_port_info*
  store %struct.ib_port_info* %19, %struct.ib_port_info** %10, align 8
  %20 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %14, align 4
  br label %59

28:                                               ; preds = %3
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %36 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %37 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %41 = call i32 @reply(%struct.ib_smp* %40)
  store i32 %41, i32* %12, align 4
  br label %353

42:                                               ; preds = %28
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %47, i32 %48)
  store %struct.qib_ibport* %49, %struct.qib_ibport** %9, align 8
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %51 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %52 = call i32 @check_mkey(%struct.qib_ibport* %50, %struct.ib_smp* %51, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %56, i32* %12, align 4
  br label %353

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %61 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %60)
  store %struct.qib_devdata* %61, %struct.qib_devdata** %7, align 8
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 3
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i64 %67
  store %struct.qib_pportdata* %68, %struct.qib_pportdata** %8, align 8
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %70 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %69, i32 0, i32 11
  store %struct.qib_ibport* %70, %struct.qib_ibport** %9, align 8
  %71 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %72 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memset(i64 %73, i32 0, i32 8)
  %75 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %76 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %59
  %81 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %82 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %86 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %91 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %102, label %95

95:                                               ; preds = %89, %80, %59
  %96 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %97 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %101 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %89
  %103 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %104 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %108 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %107, i32 0, i32 28
  store i32 %106, i32* %108, align 8
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @cpu_to_be16(i32 %111)
  %113 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %114 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %113, i32 0, i32 27
  store i8* %112, i8** %114, align 8
  %115 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %116 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 10
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i8* @cpu_to_be16(i32 %119)
  %121 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %122 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %121, i32 0, i32 26
  store i8* %120, i8** %122, align 8
  %123 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %124 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @cpu_to_be32(i32 %126)
  %128 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %129 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %128, i32 0, i32 25
  store i32 %127, i32* %129, align 8
  %130 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %131 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 9
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @cpu_to_be16(i32 %133)
  %135 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %136 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %135, i32 0, i32 24
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %139 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %141 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %144 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %143, i32 0, i32 23
  store i32 %142, i32* %144, align 4
  %145 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %146 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %149 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %148, i32 0, i32 22
  store i32 %147, i32* %149, align 8
  %150 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %151 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %154 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %153, i32 0, i32 21
  store i32 %152, i32* %154, align 4
  %155 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %156 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %155, i32 0, i32 0
  %157 = load i32 (i32)*, i32 (i32)** %156, align 8
  %158 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %159 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %157(i32 %160)
  store i32 %161, i32* %13, align 4
  %162 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %163 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = shl i32 %164, 4
  %166 = load i32, i32* %13, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %169 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %171 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %170, i32 0, i32 1
  %172 = load i32 (i32)*, i32 (i32)** %171, align 8
  %173 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %174 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %172(i32 %175)
  %177 = shl i32 %176, 4
  %178 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %179 = call i64 @get_linkdowndefaultstate(%struct.qib_pportdata* %178)
  %180 = icmp ne i64 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 2
  %183 = or i32 %177, %182
  %184 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %185 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %187 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 %189, 6
  %191 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %192 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %190, %193
  %195 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %196 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  %197 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %198 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = shl i32 %199, 4
  %201 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %202 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %200, %203
  %205 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %206 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 8
  %207 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %208 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  switch i32 %209, label %210 [
    i32 4096, label %211
    i32 2048, label %214
    i32 1024, label %216
    i32 512, label %218
    i32 256, label %220
  ]

210:                                              ; preds = %102
  br label %211

211:                                              ; preds = %102, %210
  %212 = load i8*, i8** @IB_MTU_4096, align 8
  %213 = ptrtoint i8* %212 to i32
  store i32 %213, i32* %11, align 4
  br label %222

214:                                              ; preds = %102
  %215 = load i32, i32* @IB_MTU_2048, align 4
  store i32 %215, i32* %11, align 4
  br label %222

216:                                              ; preds = %102
  %217 = load i32, i32* @IB_MTU_1024, align 4
  store i32 %217, i32* %11, align 4
  br label %222

218:                                              ; preds = %102
  %219 = load i32, i32* @IB_MTU_512, align 4
  store i32 %219, i32* %11, align 4
  br label %222

220:                                              ; preds = %102
  %221 = load i32, i32* @IB_MTU_256, align 4
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %220, %218, %216, %214, %211
  %223 = load i32, i32* %11, align 4
  %224 = shl i32 %223, 4
  %225 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %226 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %224, %228
  %230 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %231 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %230, i32 0, i32 6
  store i32 %229, i32* %231, align 4
  %232 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %233 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 4
  %236 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %237 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 8
  %238 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %239 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %243 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %242, i32 0, i32 20
  store i32 %241, i32* %243, align 8
  %244 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %245 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %244, i32 0, i32 2
  %246 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %245, align 8
  %247 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %248 = load i32, i32* @QIB_IB_CFG_VL_HIGH_CAP, align 4
  %249 = call i32 %246(%struct.qib_pportdata* %247, i32 %248)
  %250 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %251 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 4
  %252 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %253 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %252, i32 0, i32 2
  %254 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %253, align 8
  %255 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %256 = load i32, i32* @QIB_IB_CFG_VL_LOW_CAP, align 4
  %257 = call i32 %254(%struct.qib_pportdata* %255, i32 %256)
  %258 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %259 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %258, i32 0, i32 9
  store i32 %257, i32* %259, align 8
  %260 = load i8*, i8** @qib_ibmtu, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %222
  %263 = load i8*, i8** @qib_ibmtu, align 8
  br label %266

264:                                              ; preds = %222
  %265 = load i8*, i8** @IB_MTU_4096, align 8
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi i8* [ %263, %262 ], [ %265, %264 ]
  %268 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %269 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %268, i32 0, i32 19
  store i8* %267, i8** %269, align 8
  %270 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %271 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %270, i32 0, i32 2
  %272 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %271, align 8
  %273 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %274 = load i32, i32* @QIB_IB_CFG_OP_VLS, align 4
  %275 = call i32 %272(%struct.qib_pportdata* %273, i32 %274)
  %276 = shl i32 %275, 4
  %277 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %278 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %277, i32 0, i32 10
  store i32 %276, i32* %278, align 4
  %279 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %280 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 8
  %283 = call i8* @cpu_to_be16(i32 %282)
  %284 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %285 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %284, i32 0, i32 18
  store i8* %283, i8** %285, align 8
  %286 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %287 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @cpu_to_be16(i32 %289)
  %291 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %292 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %291, i32 0, i32 17
  store i8* %290, i8** %292, align 8
  %293 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %294 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = call i8* @cpu_to_be16(i32 %296)
  %298 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %299 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %298, i32 0, i32 16
  store i8* %297, i8** %299, align 8
  %300 = load i32, i32* @QIB_GUIDS_PER_PORT, align 4
  %301 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %302 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %301, i32 0, i32 15
  store i32 %300, i32* %302, align 4
  %303 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %304 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %308 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %307, i32 0, i32 14
  store i32 %306, i32* %308, align 8
  %309 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %310 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %309, i32 0, i32 11
  store i32 3, i32* %310, align 8
  %311 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %312 = call i32 @get_phyerrthreshold(%struct.qib_pportdata* %311)
  %313 = shl i32 %312, 4
  %314 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %315 = call i32 @get_overrunthreshold(%struct.qib_pportdata* %314)
  %316 = or i32 %313, %315
  %317 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %318 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %317, i32 0, i32 12
  store i32 %316, i32* %318, align 4
  %319 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %320 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @IB_PORT_LINK_LATENCY_SUP, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %350

326:                                              ; preds = %266
  %327 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %328 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %327, i32 0, i32 2
  %329 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %328, align 8
  %330 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %331 = load i32, i32* @QIB_IB_CFG_LINKLATENCY, align 4
  %332 = call i32 %329(%struct.qib_pportdata* %330, i32 %331)
  store i32 %332, i32* %15, align 4
  %333 = load i32, i32* %15, align 4
  %334 = ashr i32 %333, 16
  %335 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %336 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %335, i32 0, i32 13
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  store i32 %334, i32* %338, align 4
  %339 = load i32, i32* %15, align 4
  %340 = ashr i32 %339, 8
  %341 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %342 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %341, i32 0, i32 13
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  store i32 %340, i32* %344, align 4
  %345 = load i32, i32* %15, align 4
  %346 = load %struct.ib_port_info*, %struct.ib_port_info** %10, align 8
  %347 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %346, i32 0, i32 13
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  store i32 %345, i32* %349, align 4
  br label %350

350:                                              ; preds = %326, %266
  %351 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %352 = call i32 @reply(%struct.ib_smp* %351)
  store i32 %352, i32* %12, align 4
  br label %353

353:                                              ; preds = %350, %55, %34
  %354 = load i32, i32* %12, align 4
  ret i32 %354
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @check_mkey(%struct.qib_ibport*, %struct.ib_smp*, i32) #1

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @get_linkdowndefaultstate(%struct.qib_pportdata*) #1

declare dso_local i32 @get_phyerrthreshold(%struct.qib_pportdata*) #1

declare dso_local i32 @get_overrunthreshold(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
