; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_up_context_variables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_up_context_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.hfi1_devdata = type { i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@HFI1_NUM_VNIC_CTXT = common dso_local global i64 0, align 8
@n_krcvqs = common dso_local global i64 0, align 8
@DEFAULT_KRCVQS = common dso_local global i32 0, align 4
@num_vls = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Reducing # kernel rcv contexts to: %d, from %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No receive contexts available for VNIC\0A\00", align 1
@num_user_contexts = common dso_local global i64 0, align 8
@node_affinity = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Reducing # user receive contexts to: %d, from %u\0A\00", align 1
@TID_RDMA = common dso_local global i32 0, align 4
@NUM_MAP_ENTRIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"RMT size is reducing the number of user receive contexts from %u to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"rcv contexts: chip %d, used %d (kernel %d, vnic %u, user %u)\0A\00", align 1
@RCV_INCREMENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"RcvArray groups %u, ctxts extra %u\0A\00", align 1
@MAX_EAGER_ENTRIES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"RcvArray group count too high, change to %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"send contexts: chip %d, used %d (kernel %d, ack %d, user %d, vl15 %d)\0A\00", align 1
@SC_KERNEL = common dso_local global i64 0, align 8
@SC_ACK = common dso_local global i64 0, align 8
@SC_USER = common dso_local global i64 0, align 8
@SC_VL15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @set_up_context_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_up_context_variables(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %13 = load i64, i64* @HFI1_NUM_VNIC_CTXT, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %15 = call i64 @chip_send_contexts(%struct.hfi1_devdata* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = call i64 @chip_rcv_contexts(%struct.hfi1_devdata* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* @n_krcvqs, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i64, i64* @n_krcvqs, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @DEFAULT_KRCVQS, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* @num_vls, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %29, %31
  %33 = sub i64 %32, 1
  %34 = icmp ugt i64 %28, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @num_vls, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %37, %39
  %41 = sub i64 %40, 1
  %42 = load i64, i64* %3, align 8
  %43 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* @num_vls, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %44, %46
  %48 = sub i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %35, %27
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* %12, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %57 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  %63 = load i64, i64* @num_user_contexts, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = call i64 @cpumask_weight(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @node_affinity, i32 0, i32 0))
  store i64 %66, i64* %10, align 8
  br label %69

67:                                               ; preds = %58
  %68 = load i64, i64* @num_user_contexts, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* %12, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = load i64, i64* %10, align 8
  %83 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %77, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %84, %86
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %76, %69
  %89 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %90 = call i64 @qos_rmt_entries(%struct.hfi1_devdata* %89, i32* null, i32* null)
  %91 = load i64, i64* %4, align 8
  %92 = mul i64 %91, 2
  %93 = add i64 %90, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @TID_RDMA, align 4
  %96 = call i64 @HFI1_CAP_IS_KSET(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load i64, i64* %3, align 8
  %100 = sub i64 %99, 1
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %98, %88
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %107, %108
  %110 = load i32, i32* @NUM_MAP_ENTRIES, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ugt i64 %109, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load i32, i32* @NUM_MAP_ENTRIES, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %9, align 4
  %117 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %117, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %118, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %113, %105
  %124 = load i64, i64* %10, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %131 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %3, align 8
  %133 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %134 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %3, align 8
  %136 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %137 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %4, align 8
  %139 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %140 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %143 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %146 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %145, i32 0, i32 5
  store i64 %144, i64* %146, align 8
  %147 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %150 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %153 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %157 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %160 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %147, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i64 %148, i32 %151, i32 %155, i64 %158, i64 %161)
  %163 = load i32, i32* @RCV_INCREMENT, align 4
  %164 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %165 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %164, i32 0, i32 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %168 = call i32 @chip_rcv_array_count(%struct.hfi1_devdata* %167)
  %169 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %170 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = udiv i32 %168, %172
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %176 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = udiv i32 %174, %177
  %179 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %180 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %184 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %187 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul i32 %185, %189
  %191 = sub i32 %182, %190
  %192 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %193 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  %195 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %196 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %197 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  %201 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %202 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %200, i32 %204)
  %206 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %207 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %211 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = mul i32 %209, %213
  %215 = load i32, i32* @MAX_EAGER_ENTRIES, align 4
  %216 = mul nsw i32 %215, 2
  %217 = icmp ugt i32 %214, %216
  br i1 %217, label %218, label %239

218:                                              ; preds = %123
  %219 = load i32, i32* @MAX_EAGER_ENTRIES, align 4
  %220 = mul nsw i32 %219, 2
  %221 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %222 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %221, i32 0, i32 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = udiv i32 %220, %224
  %226 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %227 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  store i32 %225, i32* %228, align 4
  %229 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %230 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %231 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %230, i32 0, i32 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  %235 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %229, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %234)
  %236 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %237 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %218, %123
  %240 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %241 = call i32 @init_sc_pools_and_sizes(%struct.hfi1_devdata* %240)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp sge i32 %242, 0
  br i1 %243, label %244, label %282

244:                                              ; preds = %239
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %247 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  %248 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %249 = load i64, i64* %11, align 8
  %250 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %251 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %254 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %253, i32 0, i32 7
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = load i64, i64* @SC_KERNEL, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %261 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %260, i32 0, i32 7
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %261, align 8
  %263 = load i64, i64* @SC_ACK, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %268 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %267, i32 0, i32 7
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = load i64, i64* @SC_USER, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %275 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %274, i32 0, i32 7
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %275, align 8
  %277 = load i64, i64* @SC_VL15, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %248, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i64 %249, i32 %252, i32 %259, i32 %266, i32 %273, i32 %280)
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %244, %239
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i64 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i64 @chip_rcv_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

declare dso_local i64 @cpumask_weight(i32*) #1

declare dso_local i64 @qos_rmt_entries(%struct.hfi1_devdata*, i32*, i32*) #1

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i64, ...) #1

declare dso_local i32 @chip_rcv_array_count(%struct.hfi1_devdata*) #1

declare dso_local i32 @init_sc_pools_and_sizes(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
