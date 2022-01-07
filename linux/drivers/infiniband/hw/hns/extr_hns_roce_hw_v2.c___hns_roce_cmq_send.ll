; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_cmq_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_cmq_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i64 }
%struct.hns_roce_cmq_desc = type { i32, i32 }
%struct.hns_roce_v2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.hns_roce_v2_cmq_ring }
%struct.hns_roce_v2_cmq_ring = type { i32, i32, i32, %struct.hns_roce_cmq_desc* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"set cmq desc:\0A\00", align 1
@ROCEE_TX_CMQ_TAIL_REG = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_FLAG_NO_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Get cmq desc:\0A\00", align 1
@CMD_EXEC_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cleaned %d, need to clean %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_cmq_desc*, i32)* @__hns_roce_cmq_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hns_roce_cmq_send(%struct.hns_roce_dev* %0, %struct.hns_roce_cmq_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_cmq_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_v2_priv*, align 8
  %9 = alloca %struct.hns_roce_v2_cmq_ring*, align 8
  %10 = alloca %struct.hns_roce_cmq_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_cmq_desc* %1, %struct.hns_roce_cmq_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %20, %struct.hns_roce_v2_priv** %8, align 8
  %21 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %8, align 8
  %22 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store %struct.hns_roce_v2_cmq_ring* %23, %struct.hns_roce_v2_cmq_ring** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %24, i32 0, i32 2
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %29 = call i32 @hns_roce_cmq_space(%struct.hns_roce_v2_cmq_ring* %28)
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %33 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %32, i32 0, i32 2
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %197

37:                                               ; preds = %3
  %38 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %39 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %79, %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %41
  %46 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %47 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %46, i32 0, i32 3
  %48 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %47, align 8
  %49 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %50 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %48, i64 %52
  store %struct.hns_roce_cmq_desc* %53, %struct.hns_roce_cmq_desc** %10, align 8
  %54 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %10, align 8
  %55 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %55, i64 %57
  %59 = bitcast %struct.hns_roce_cmq_desc* %54 to i8*
  %60 = bitcast %struct.hns_roce_cmq_desc* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %62 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %66 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %70 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %73 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %45
  %77 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %78 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %45
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %41

82:                                               ; preds = %41
  %83 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %84 = load i32, i32* @ROCEE_TX_CMQ_TAIL_REG, align 4
  %85 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %86 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @roce_write(%struct.hns_roce_dev* %83, i32 %84, i32 %87)
  %89 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %6, align 8
  %90 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load i32, i32* @HNS_ROCE_CMD_FLAG_NO_INTR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %106, %96
  %98 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %99 = call i64 @hns_roce_cmq_csq_done(%struct.hns_roce_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %113

102:                                              ; preds = %97
  %103 = call i32 @udelay(i32 1)
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %8, align 8
  %109 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %97, label %113

113:                                              ; preds = %106, %101
  br label %114

114:                                              ; preds = %113, %82
  %115 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %116 = call i64 @hns_roce_cmq_csq_done(%struct.hns_roce_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %173

118:                                              ; preds = %114
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %171, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %172

123:                                              ; preds = %119
  %124 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %125 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %124, i32 0, i32 3
  %126 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %126, i64 %128
  store %struct.hns_roce_cmq_desc* %129, %struct.hns_roce_cmq_desc** %10, align 8
  %130 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %6, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %130, i64 %132
  %134 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %10, align 8
  %135 = bitcast %struct.hns_roce_cmq_desc* %133 to i8*
  %136 = bitcast %struct.hns_roce_cmq_desc* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 4 %136, i64 8, i1 false)
  %137 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %138 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dev_dbg(i32 %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.hns_roce_cmq_desc*, %struct.hns_roce_cmq_desc** %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %141, i64 %143
  %145 = getelementptr inbounds %struct.hns_roce_cmq_desc, %struct.hns_roce_cmq_desc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le16_to_cpu(i32 %146)
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %14, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* @CMD_EXEC_SUCCESS, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %123
  store i32 0, i32* %15, align 4
  br label %156

153:                                              ; preds = %123
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %153, %152
  %157 = load i64, i64* %14, align 8
  %158 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %8, align 8
  %159 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i64 %157, i64* %160, align 8
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %167 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  store i32 0, i32* %16, align 4
  br label %171

171:                                              ; preds = %170, %156
  br label %119

172:                                              ; preds = %119
  br label %173

173:                                              ; preds = %172, %114
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @EAGAIN, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %181 = call i32 @hns_roce_cmq_csq_clean(%struct.hns_roce_dev* %180)
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %179
  %186 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %187 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @dev_warn(i32 %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %185, %179
  %193 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %9, align 8
  %194 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %193, i32 0, i32 2
  %195 = call i32 @spin_unlock_bh(i32* %194)
  %196 = load i32, i32* %15, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %192, %31
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_roce_cmq_space(%struct.hns_roce_v2_cmq_ring*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @hns_roce_cmq_csq_done(%struct.hns_roce_dev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hns_roce_cmq_csq_clean(%struct.hns_roce_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
