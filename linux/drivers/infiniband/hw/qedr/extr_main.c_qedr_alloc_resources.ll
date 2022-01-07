; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.qedr_cnq*, %struct.qedr_cnq*, %struct.qedr_cnq*, i64, i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.qedr_cnq = type { i32, i32, i32, i32*, %struct.TYPE_4__*, %struct.qedr_cnq*, %struct.qedr_dev* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 (i32)* }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32*)* }

@QEDR_MAX_SGID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XA_FLAGS_LOCK_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"qedr_iwarpq\00", align 1
@u32 = common dso_local global i32 0, align 4
@QED_RDMA_MAX_CNQ_SIZE = common dso_local global i32 0, align 4
@QEDR_ROCE_MAX_CNQ_SIZE = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_CONSUME = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@QED_ROCE_PROTOCOL_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"qedr%d@pci:%s\00", align 1
@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"cnq[%d].cons=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*)* @qedr_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_alloc_resources(%struct.qedr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca %struct.qedr_cnq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  %9 = load i32, i32* @QEDR_MAX_SGID, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kcalloc(i32 %9, i32 4, i32 %10)
  %12 = bitcast i8* %11 to %struct.qedr_cnq*
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %14 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %13, i32 0, i32 1
  store %struct.qedr_cnq* %12, %struct.qedr_cnq** %14, align 8
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %16 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %15, i32 0, i32 1
  %17 = load %struct.qedr_cnq*, %struct.qedr_cnq** %16, align 8
  %18 = icmp ne %struct.qedr_cnq* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %259

22:                                               ; preds = %1
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %24 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %23, i32 0, i32 10
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %27 = call i64 @IS_IWARP(%struct.qedr_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 9
  %32 = load i32, i32* @XA_FLAGS_LOCK_IRQ, align 4
  %33 = call i32 @xa_init_flags(i32* %31, i32 %32)
  %34 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %36 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %22
  %38 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %39 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i32 %40, i32 48, i32 %41)
  %43 = bitcast i8* %42 to %struct.qedr_cnq*
  %44 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %45 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %44, i32 0, i32 2
  store %struct.qedr_cnq* %43, %struct.qedr_cnq** %45, align 8
  %46 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %47 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %46, i32 0, i32 2
  %48 = load %struct.qedr_cnq*, %struct.qedr_cnq** %47, align 8
  %49 = icmp ne %struct.qedr_cnq* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %253

53:                                               ; preds = %37
  %54 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %55 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kcalloc(i32 %56, i32 48, i32 %57)
  %59 = bitcast i8* %58 to %struct.qedr_cnq*
  %60 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %61 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %60, i32 0, i32 3
  store %struct.qedr_cnq* %59, %struct.qedr_cnq** %61, align 8
  %62 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %63 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %62, i32 0, i32 3
  %64 = load %struct.qedr_cnq*, %struct.qedr_cnq** %63, align 8
  %65 = icmp ne %struct.qedr_cnq* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %248

69:                                               ; preds = %53
  %70 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %71 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64 (i32)*, i64 (i32)** %73, align 8
  %75 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %76 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i64 %74(i32 %77)
  %79 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %80 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @u32, align 4
  %82 = load i32, i32* @QED_RDMA_MAX_CNQ_SIZE, align 4
  %83 = load i32, i32* @QEDR_ROCE_MAX_CNQ_SIZE, align 4
  %84 = call i32 @min_t(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %182, %69
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %88 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %185

91:                                               ; preds = %85
  %92 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %93 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %92, i32 0, i32 3
  %94 = load %struct.qedr_cnq*, %struct.qedr_cnq** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %94, i64 %96
  store %struct.qedr_cnq* %97, %struct.qedr_cnq** %4, align 8
  %98 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %99 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %100 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %99, i32 0, i32 2
  %101 = load %struct.qedr_cnq*, %struct.qedr_cnq** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %101, i64 %103
  %105 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %106 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i32 @qedr_alloc_mem_sb(%struct.qedr_dev* %98, %struct.qedr_cnq* %104, i64 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %91
  br label %201

115:                                              ; preds = %91
  %116 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %117 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %116, i32 0, i32 6
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)** %121, align 8
  %123 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %124 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME, align 4
  %127 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %128 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %131 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %130, i32 0, i32 1
  %132 = call i32 %122(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 8, i32* %131, i32* null)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %115
  br label %186

136:                                              ; preds = %115
  %137 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %138 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %139 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %138, i32 0, i32 6
  store %struct.qedr_dev* %137, %struct.qedr_dev** %139, align 8
  %140 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %141 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %140, i32 0, i32 2
  %142 = load %struct.qedr_cnq*, %struct.qedr_cnq** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %142, i64 %144
  %146 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %147 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %146, i32 0, i32 5
  store %struct.qedr_cnq* %145, %struct.qedr_cnq** %147, align 8
  %148 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %149 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %148, i32 0, i32 2
  %150 = load %struct.qedr_cnq*, %struct.qedr_cnq** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %150, i64 %152
  %154 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %153, i32 0, i32 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %5, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load i64, i64* @QED_ROCE_PROTOCOL_INDEX, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %162 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %161, i32 0, i32 3
  store i32* %160, i32** %162, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %165 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %167 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %171 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @pci_name(i32 %172)
  %174 = call i32 @sprintf(i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %169, i8* %173)
  %175 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %176 = load i32, i32* @QEDR_MSG_INIT, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.qedr_cnq*, %struct.qedr_cnq** %4, align 8
  %179 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %178, i32 0, i32 1
  %180 = call i32 @qed_chain_get_cons_idx(i32* %179)
  %181 = call i32 @DP_DEBUG(%struct.qedr_dev* %175, i32 %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %136
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %85

185:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %259

186:                                              ; preds = %135
  %187 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %188 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %189 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %188, i32 0, i32 2
  %190 = load %struct.qedr_cnq*, %struct.qedr_cnq** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %190, i64 %192
  %194 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %195 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = call i32 @qedr_free_mem_sb(%struct.qedr_dev* %187, %struct.qedr_cnq* %193, i64 %199)
  br label %201

201:                                              ; preds = %186, %114
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %240, %201
  %205 = load i32, i32* %7, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %243

207:                                              ; preds = %204
  %208 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %209 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %208, i32 0, i32 6
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32 (i32, i32*)*, i32 (i32, i32*)** %213, align 8
  %215 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %216 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %219 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %218, i32 0, i32 3
  %220 = load %struct.qedr_cnq*, %struct.qedr_cnq** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %220, i64 %222
  %224 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %223, i32 0, i32 1
  %225 = call i32 %214(i32 %217, i32* %224)
  %226 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %227 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %228 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %227, i32 0, i32 2
  %229 = load %struct.qedr_cnq*, %struct.qedr_cnq** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %229, i64 %231
  %233 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %234 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = call i32 @qedr_free_mem_sb(%struct.qedr_dev* %226, %struct.qedr_cnq* %232, i64 %238)
  br label %240

240:                                              ; preds = %207
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %7, align 4
  br label %204

243:                                              ; preds = %204
  %244 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %245 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %244, i32 0, i32 3
  %246 = load %struct.qedr_cnq*, %struct.qedr_cnq** %245, align 8
  %247 = call i32 @kfree(%struct.qedr_cnq* %246)
  br label %248

248:                                              ; preds = %243, %66
  %249 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %250 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %249, i32 0, i32 2
  %251 = load %struct.qedr_cnq*, %struct.qedr_cnq** %250, align 8
  %252 = call i32 @kfree(%struct.qedr_cnq* %251)
  br label %253

253:                                              ; preds = %248, %50
  %254 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %255 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %254, i32 0, i32 1
  %256 = load %struct.qedr_cnq*, %struct.qedr_cnq** %255, align 8
  %257 = call i32 @kfree(%struct.qedr_cnq* %256)
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %253, %185, %19
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @IS_IWARP(%struct.qedr_dev*) #1

declare dso_local i32 @xa_init_flags(i32*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @qedr_alloc_mem_sb(%struct.qedr_dev*, %struct.qedr_cnq*, i64) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i32 @qedr_free_mem_sb(%struct.qedr_dev*, %struct.qedr_cnq*, i64) #1

declare dso_local i32 @kfree(%struct.qedr_cnq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
