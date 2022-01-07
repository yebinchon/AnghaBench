; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_write_tpt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_write_tpt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_wr_wait = type { i32 }
%struct.fw_ri_tpte = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@write_tpt_entry.key = internal global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@T4_STAG_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"stag_state 0x%0x type 0x%0x pdid 0x%0x, stag_idx 0x%x\0A\00", align 1
@FW_RI_TPTE_VALID_F = common dso_local global i32 0, align 4
@FW_RI_TPTE_STAGKEY_M = common dso_local global i32 0, align 4
@FW_RI_TPTE_MWBINDEN_F = common dso_local global i32 0, align 4
@FW_RI_ZERO_BASED_TO = common dso_local global i32 0, align 4
@FW_RI_VA_BASED_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff*, %struct.c4iw_wr_wait*)* @write_tpt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tpt_entry(%struct.c4iw_rdev* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct.sk_buff* %14, %struct.c4iw_wr_wait* %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca %struct.c4iw_rdev*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.sk_buff*, align 8
  %33 = alloca %struct.c4iw_wr_wait*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.fw_ri_tpte*, align 8
  %36 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %18, align 8
  store i32 %1, i32* %19, align 4
  store i32* %2, i32** %20, align 8
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store %struct.sk_buff* %14, %struct.sk_buff** %32, align 8
  store %struct.c4iw_wr_wait* %15, %struct.c4iw_wr_wait** %33, align 8
  %37 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %38 = call i64 @c4iw_fatal_error(%struct.c4iw_rdev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %16
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %17, align 4
  br label %274

43:                                               ; preds = %16
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.fw_ri_tpte* @kmalloc(i32 64, i32 %44)
  store %struct.fw_ri_tpte* %45, %struct.fw_ri_tpte** %35, align 8
  %46 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %47 = icmp ne %struct.fw_ri_tpte* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %17, align 4
  br label %274

51:                                               ; preds = %43
  %52 = load i32, i32* %21, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %21, align 4
  %55 = load i32*, i32** %20, align 8
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %36, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %134, label %60

60:                                               ; preds = %51
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @T4_STAG_UNSET, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %60
  %66 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %67 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @c4iw_get_resource(i32* %68)
  store i32 %69, i32* %36, align 4
  %70 = load i32, i32* %36, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %65
  %73 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %74 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %78 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %84 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %88 = call i32 @kfree(%struct.fw_ri_tpte* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  br label %274

91:                                               ; preds = %65
  %92 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %93 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %97 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 32
  store i64 %101, i64* %99, align 8
  %102 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %103 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %108 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %106, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %91
  %114 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %115 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %120 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store i64 %118, i64* %122, align 8
  br label %123

123:                                              ; preds = %113, %91
  %124 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %125 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %36, align 4
  %129 = shl i32 %128, 8
  %130 = call i32 @atomic_inc_return(i32* @write_tpt_entry.key)
  %131 = and i32 %130, 255
  %132 = or i32 %129, %131
  %133 = load i32*, i32** %20, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %123, %60, %51
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %36, align 4
  %139 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %19, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %144 = call i32 @memset(%struct.fw_ri_tpte* %143, i32 0, i32 64)
  br label %232

145:                                              ; preds = %134
  %146 = load i32, i32* @FW_RI_TPTE_VALID_F, align 4
  %147 = load i32*, i32** %20, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @FW_RI_TPTE_STAGKEY_M, align 4
  %150 = and i32 %148, %149
  %151 = call i32 @FW_RI_TPTE_STAGKEY_V(i32 %150)
  %152 = or i32 %146, %151
  %153 = load i32, i32* %21, align 4
  %154 = call i32 @FW_RI_TPTE_STAGSTATE_V(i32 %153)
  %155 = or i32 %152, %154
  %156 = load i32, i32* %23, align 4
  %157 = call i32 @FW_RI_TPTE_STAGTYPE_V(i32 %156)
  %158 = or i32 %155, %157
  %159 = load i32, i32* %22, align 4
  %160 = call i32 @FW_RI_TPTE_PDID_V(i32 %159)
  %161 = or i32 %158, %160
  %162 = call i8* @cpu_to_be32(i32 %161)
  %163 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %164 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %163, i32 0, i32 7
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %24, align 4
  %166 = call i32 @FW_RI_TPTE_PERM_V(i32 %165)
  %167 = load i32, i32* %25, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %145
  %170 = load i32, i32* @FW_RI_TPTE_MWBINDEN_F, align 4
  br label %172

171:                                              ; preds = %145
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 0, %171 ]
  %174 = or i32 %166, %173
  %175 = load i32, i32* %26, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @FW_RI_ZERO_BASED_TO, align 4
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @FW_RI_VA_BASED_TO, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = call i32 @FW_RI_TPTE_ADDRTYPE_V(i32 %182)
  %184 = or i32 %174, %183
  %185 = load i32, i32* %29, align 4
  %186 = call i32 @FW_RI_TPTE_PS_V(i32 %185)
  %187 = or i32 %184, %186
  %188 = call i8* @cpu_to_be32(i32 %187)
  %189 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %190 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %189, i32 0, i32 6
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %30, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %181
  br label %201

194:                                              ; preds = %181
  %195 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %196 = load i32, i32* %31, align 4
  %197 = call i32 @PBL_OFF(%struct.c4iw_rdev* %195, i32 %196)
  %198 = ashr i32 %197, 3
  %199 = call i32 @FW_RI_TPTE_PBLADDR_V(i32 %198)
  %200 = call i8* @cpu_to_be32(i32 %199)
  br label %201

201:                                              ; preds = %194, %193
  %202 = phi i8* [ null, %193 ], [ %200, %194 ]
  %203 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %204 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %203, i32 0, i32 5
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* %28, align 4
  %206 = sext i32 %205 to i64
  %207 = and i64 %206, 4294967295
  %208 = trunc i64 %207 to i32
  %209 = call i8* @cpu_to_be32(i32 %208)
  %210 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %211 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* %27, align 4
  %213 = ashr i32 %212, 32
  %214 = call i8* @cpu_to_be32(i32 %213)
  %215 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %216 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %27, align 4
  %218 = sext i32 %217 to i64
  %219 = and i64 %218, 4294967295
  %220 = trunc i64 %219 to i32
  %221 = call i8* @cpu_to_be32(i32 %220)
  %222 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %223 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  %224 = call i8* @cpu_to_be32(i32 0)
  %225 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %226 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %28, align 4
  %228 = ashr i32 %227, 32
  %229 = call i8* @cpu_to_be32(i32 %228)
  %230 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %231 = getelementptr inbounds %struct.fw_ri_tpte, %struct.fw_ri_tpte* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %201, %142
  %233 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %234 = load i32, i32* %36, align 4
  %235 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %236 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %241, 5
  %243 = add nsw i32 %234, %242
  %244 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %246 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %33, align 8
  %247 = call i32 @write_adapter_mem(%struct.c4iw_rdev* %233, i32 %243, i32 64, %struct.fw_ri_tpte* %244, %struct.sk_buff* %245, %struct.c4iw_wr_wait* %246)
  store i32 %247, i32* %34, align 4
  %248 = load i32, i32* %19, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %232
  %251 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %252 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %36, align 4
  %255 = call i32 @c4iw_put_resource(i32* %253, i32 %254)
  %256 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %257 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = call i32 @mutex_lock(i32* %258)
  %260 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %261 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = sub nsw i64 %264, 32
  store i64 %265, i64* %263, align 8
  %266 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %18, align 8
  %267 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = call i32 @mutex_unlock(i32* %268)
  br label %270

270:                                              ; preds = %250, %232
  %271 = load %struct.fw_ri_tpte*, %struct.fw_ri_tpte** %35, align 8
  %272 = call i32 @kfree(%struct.fw_ri_tpte* %271)
  %273 = load i32, i32* %34, align 4
  store i32 %273, i32* %17, align 4
  br label %274

274:                                              ; preds = %270, %72, %48, %40
  %275 = load i32, i32* %17, align 4
  ret i32 %275
}

declare dso_local i64 @c4iw_fatal_error(%struct.c4iw_rdev*) #1

declare dso_local %struct.fw_ri_tpte* @kmalloc(i32, i32) #1

declare dso_local i32 @c4iw_get_resource(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.fw_ri_tpte*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.fw_ri_tpte*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_RI_TPTE_STAGKEY_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_STAGSTATE_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_STAGTYPE_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_PDID_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_PERM_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_ADDRTYPE_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_PS_V(i32) #1

declare dso_local i32 @FW_RI_TPTE_PBLADDR_V(i32) #1

declare dso_local i32 @PBL_OFF(%struct.c4iw_rdev*, i32) #1

declare dso_local i32 @write_adapter_mem(%struct.c4iw_rdev*, i32, i32, %struct.fw_ri_tpte*, %struct.sk_buff*, %struct.c4iw_wr_wait*) #1

declare dso_local i32 @c4iw_put_resource(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
