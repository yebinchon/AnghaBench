; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_add_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_add_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32, i64, i32, i32 }
%struct.mlx4_ib_dev = type { %struct.mlx4_ib_iboe }
%struct.mlx4_ib_iboe = type { i32, %struct.mlx4_port_gid_table* }
%struct.mlx4_port_gid_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.gid_cache_context* }
%struct.gid_cache_context = type { i32, i32 }
%struct.gid_entry = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_MAX_PORT_GIDS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_attr*, i8**)* @mlx4_ib_add_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_add_gid(%struct.ib_gid_attr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_ib_iboe*, align 8
  %8 = alloca %struct.mlx4_port_gid_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gid_entry*, align 8
  %15 = alloca %struct.gid_cache_context*, align 8
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %4, align 8
  store i8** %1, i8*** %5, align 8
  %16 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %17 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mlx4_ib_dev* @to_mdev(i32 %18)
  store %struct.mlx4_ib_dev* %19, %struct.mlx4_ib_dev** %6, align 8
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 0
  store %struct.mlx4_ib_iboe* %21, %struct.mlx4_ib_iboe** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.gid_entry* null, %struct.gid_entry** %14, align 8
  %22 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %23 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rdma_cap_roce_gid_table(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %282

33:                                               ; preds = %2
  %34 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %35 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %282

42:                                               ; preds = %33
  %43 = load i8**, i8*** %5, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %282

48:                                               ; preds = %42
  %49 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %49, i32 0, i32 1
  %51 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %50, align 8
  %52 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %53 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %51, i64 %56
  store %struct.mlx4_port_gid_table* %57, %struct.mlx4_port_gid_table** %8, align 8
  %58 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %108, %48
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %61
  %66 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %74 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %73, i32 0, i32 2
  %75 = call i32 @memcmp(i32* %72, i32* %74, i32 4)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %65
  %78 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %79 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %87 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %10, align 4
  br label %111

92:                                               ; preds = %77, %65
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %97 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = call i64 @rdma_is_zero_gid(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %95, %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %61

111:                                              ; preds = %90, %61
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %194

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %193

120:                                              ; preds = %114
  %121 = load i32, i32* @GFP_ATOMIC, align 4
  %122 = call %struct.gid_cache_context* @kmalloc(i32 8, i32 %121)
  %123 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %124 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store %struct.gid_cache_context* %122, %struct.gid_cache_context** %129, align 8
  %130 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %131 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load %struct.gid_cache_context*, %struct.gid_cache_context** %136, align 8
  %138 = icmp ne %struct.gid_cache_context* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %120
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %11, align 4
  br label %192

142:                                              ; preds = %120
  %143 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %144 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load %struct.gid_cache_context*, %struct.gid_cache_context** %149, align 8
  %151 = bitcast %struct.gid_cache_context* %150 to i8*
  %152 = load i8**, i8*** %5, align 8
  store i8* %151, i8** %152, align 8
  %153 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %154 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %161 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %160, i32 0, i32 2
  %162 = call i32 @memcpy(i32* %159, i32* %161, i32 4)
  %163 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %164 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %167 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i64 %165, i64* %172, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %175 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load %struct.gid_cache_context*, %struct.gid_cache_context** %180, align 8
  %182 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %181, i32 0, i32 0
  store i32 %173, i32* %182, align 4
  %183 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %184 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load %struct.gid_cache_context*, %struct.gid_cache_context** %189, align 8
  %191 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  store i32 1, i32* %12, align 4
  br label %192

192:                                              ; preds = %142, %139
  br label %193

193:                                              ; preds = %192, %117
  br label %210

194:                                              ; preds = %111
  %195 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %196 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load %struct.gid_cache_context*, %struct.gid_cache_context** %201, align 8
  store %struct.gid_cache_context* %202, %struct.gid_cache_context** %15, align 8
  %203 = load %struct.gid_cache_context*, %struct.gid_cache_context** %15, align 8
  %204 = bitcast %struct.gid_cache_context* %203 to i8*
  %205 = load i8**, i8*** %5, align 8
  store i8* %204, i8** %205, align 8
  %206 = load %struct.gid_cache_context*, %struct.gid_cache_context** %15, align 8
  %207 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %194, %193
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %262, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %262

216:                                              ; preds = %213
  %217 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %218 = load i32, i32* @GFP_ATOMIC, align 4
  %219 = call %struct.gid_entry* @kmalloc_array(i32 %217, i32 16, i32 %218)
  store %struct.gid_entry* %219, %struct.gid_entry** %14, align 8
  %220 = load %struct.gid_entry*, %struct.gid_entry** %14, align 8
  %221 = icmp ne %struct.gid_entry* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %11, align 4
  br label %261

225:                                              ; preds = %216
  store i32 0, i32* %13, align 4
  br label %226

226:                                              ; preds = %257, %225
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %260

230:                                              ; preds = %226
  %231 = load %struct.gid_entry*, %struct.gid_entry** %14, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %231, i64 %233
  %235 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %234, i32 0, i32 1
  %236 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %237 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %236, i32 0, i32 0
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 1
  %243 = call i32 @memcpy(i32* %235, i32* %242, i32 4)
  %244 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %8, align 8
  %245 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.gid_entry*, %struct.gid_entry** %14, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %252, i64 %254
  %256 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %255, i32 0, i32 0
  store i64 %251, i64* %256, align 8
  br label %257

257:                                              ; preds = %230
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  br label %226

260:                                              ; preds = %226
  br label %261

261:                                              ; preds = %260, %222
  br label %262

262:                                              ; preds = %261, %213, %210
  %263 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %7, align 8
  %264 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %263, i32 0, i32 0
  %265 = call i32 @spin_unlock_bh(i32* %264)
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %262
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %268
  %272 = load %struct.gid_entry*, %struct.gid_entry** %14, align 8
  %273 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %274 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %275 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @mlx4_ib_update_gids(%struct.gid_entry* %272, %struct.mlx4_ib_dev* %273, i32 %276)
  store i32 %277, i32* %11, align 4
  %278 = load %struct.gid_entry*, %struct.gid_entry** %14, align 8
  %279 = call i32 @kfree(%struct.gid_entry* %278)
  br label %280

280:                                              ; preds = %271, %268, %262
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %45, %39, %30
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @rdma_cap_roce_gid_table(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @rdma_is_zero_gid(i32*) #1

declare dso_local %struct.gid_cache_context* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.gid_entry* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx4_ib_update_gids(%struct.gid_entry*, %struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @kfree(%struct.gid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
