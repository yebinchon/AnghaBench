; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.qed_dev*, %struct.qed_dev_rdma_info*)*, i32 (%struct.qed_dev*, i32)*, i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)*, %struct.TYPE_6__* }
%struct.qed_dev = type { i32 }
%struct.qed_dev_rdma_info = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.qed_dev*)* }
%struct.qedr_dev = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.qed_dev*, %struct.net_device*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@qedr_dev = common dso_local global i32 0, align 4
@ibdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to allocate ib device\0A\00", align 1
@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"qedr add device called\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to get qed roce operations\0A\00", align 1
@.str.3 = private unnamed_addr constant [162 x i8] c"iWARP is disabled over a 100g device Enabling it may impact L2 performance. To enable it run devlink dev param set <dev> name iwarp_cmt value true cmode runtime\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed. At least one CNQ is required.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDR_WQ_MULTIPLIER_DFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to allocate register device\0A\00", align 1
@QEDR_ENET_STATE_BIT = common dso_local global i32 0, align 4
@QEDR_PORT = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"qedr driver loaded successfully\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"qedr driver load failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qedr_dev* (%struct.qed_dev*, %struct.pci_dev*, %struct.net_device*)* @qedr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qedr_dev* @qedr_add(%struct.qed_dev* %0, %struct.pci_dev* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.qed_dev_rdma_info, align 4
  %9 = alloca %struct.qedr_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @qedr_dev, align 4
  %12 = load i32, i32* @ibdev, align 4
  %13 = call %struct.qedr_dev* @ib_alloc_device(i32 %11, i32 %12)
  store %struct.qedr_dev* %13, %struct.qedr_dev** %9, align 8
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %15 = icmp ne %struct.qedr_dev* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.qedr_dev* null, %struct.qedr_dev** %4, align 8
  br label %187

18:                                               ; preds = %3
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %20 = load i32, i32* @QEDR_MSG_INIT, align 4
  %21 = call i32 @DP_DEBUG(%struct.qedr_dev* %19, i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %24 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %23, i32 0, i32 12
  store %struct.pci_dev* %22, %struct.pci_dev** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %27 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %26, i32 0, i32 11
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %29 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %30 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %29, i32 0, i32 10
  store %struct.qed_dev* %28, %struct.qed_dev** %30, align 8
  %31 = call %struct.TYPE_7__* (...) @qed_get_rdma_ops()
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** @qed_ops, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @qed_ops, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %36 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %180

37:                                               ; preds = %18
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @qed_ops, align 8
  %39 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %40 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %39, i32 0, i32 4
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @qed_ops, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32 (%struct.qed_dev*, %struct.qed_dev_rdma_info*)*, i32 (%struct.qed_dev*, %struct.qed_dev_rdma_info*)** %42, align 8
  %44 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %45 = call i32 %43(%struct.qed_dev* %44, %struct.qed_dev_rdma_info* %8)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %180

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.qed_dev_rdma_info, %struct.qed_dev_rdma_info* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %53 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.qed_dev_rdma_info, %struct.qed_dev_rdma_info* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %57 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.qed_dev_rdma_info, %struct.qed_dev_rdma_info* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %62 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %64 = call i64 @IS_IWARP(%struct.qedr_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %49
  %67 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %68 = call i64 @QEDR_IS_CMT(%struct.qedr_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %72 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %71, i32 0, i32 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32 (%struct.qed_dev*, i32)*, i32 (%struct.qed_dev*, i32)** %74, align 8
  %76 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %77 = call i32 %75(%struct.qed_dev* %76, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %82 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %81, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.3, i64 0, i64 0))
  br label %180

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %66, %49
  %85 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %86 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %85, i32 0, i32 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %90, align 8
  %92 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %93 = call i32 %91(%struct.qed_dev* %92)
  %94 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %95 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %97 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %96, i32 0, i32 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %99, align 8
  %101 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %102 = call i32 %100(%struct.qed_dev* %101)
  %103 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %104 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %106 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %105, i32 0, i32 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %108, align 8
  %110 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %111 = call i32 %109(%struct.qed_dev* %110)
  %112 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %113 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %115 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %84
  %119 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %120 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %180

123:                                              ; preds = %84
  %124 = load i32, i32* @QEDR_WQ_MULTIPLIER_DFT, align 4
  %125 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %126 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %128 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %129 = call i32 @qedr_pci_set_atomic(%struct.qedr_dev* %127, %struct.pci_dev* %128)
  %130 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %131 = call i32 @qedr_alloc_resources(%struct.qedr_dev* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %180

135:                                              ; preds = %123
  %136 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %137 = call i32 @qedr_init_hw(%struct.qedr_dev* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %177

141:                                              ; preds = %135
  %142 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %143 = call i32 @qedr_setup_irqs(%struct.qedr_dev* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %174

147:                                              ; preds = %141
  %148 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %149 = call i32 @qedr_register_device(%struct.qedr_dev* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %154 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %171

155:                                              ; preds = %147
  %156 = load i32, i32* @QEDR_ENET_STATE_BIT, align 4
  %157 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %158 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %157, i32 0, i32 1
  %159 = call i32 @test_and_set_bit(i32 %156, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %155
  %162 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %163 = load i32, i32* @QEDR_PORT, align 4
  %164 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %165 = call i32 @qedr_ib_dispatch_event(%struct.qedr_dev* %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %155
  %167 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %168 = load i32, i32* @QEDR_MSG_INIT, align 4
  %169 = call i32 @DP_DEBUG(%struct.qedr_dev* %167, i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %170 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  store %struct.qedr_dev* %170, %struct.qedr_dev** %4, align 8
  br label %187

171:                                              ; preds = %152
  %172 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %173 = call i32 @qedr_sync_free_irqs(%struct.qedr_dev* %172)
  br label %174

174:                                              ; preds = %171, %146
  %175 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %176 = call i32 @qedr_stop_hw(%struct.qedr_dev* %175)
  br label %177

177:                                              ; preds = %174, %140
  %178 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %179 = call i32 @qedr_free_resources(%struct.qedr_dev* %178)
  br label %180

180:                                              ; preds = %177, %134, %118, %80, %48, %34
  %181 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %182 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %181, i32 0, i32 0
  %183 = call i32 @ib_dealloc_device(i32* %182)
  %184 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %185)
  store %struct.qedr_dev* null, %struct.qedr_dev** %4, align 8
  br label %187

187:                                              ; preds = %180, %166, %16
  %188 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  ret %struct.qedr_dev* %188
}

declare dso_local %struct.qedr_dev* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*) #1

declare dso_local %struct.TYPE_7__* @qed_get_rdma_ops(...) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i64 @IS_IWARP(%struct.qedr_dev*) #1

declare dso_local i64 @QEDR_IS_CMT(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_pci_set_atomic(%struct.qedr_dev*, %struct.pci_dev*) #1

declare dso_local i32 @qedr_alloc_resources(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_init_hw(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_setup_irqs(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_register_device(%struct.qedr_dev*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qedr_ib_dispatch_event(%struct.qedr_dev*, i32, i32) #1

declare dso_local i32 @qedr_sync_free_irqs(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_stop_hw(%struct.qedr_dev*) #1

declare dso_local i32 @qedr_free_resources(%struct.qedr_dev*) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
