; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_del_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_del_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32, i32 }
%struct.gid_cache_context = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.mlx4_ib_iboe }
%struct.mlx4_ib_iboe = type { i32, %struct.mlx4_port_gid_table* }
%struct.mlx4_port_gid_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.gid_entry* }
%struct.gid_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i32 0, align 4
@MLX4_MAX_PORT_GIDS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_attr*, i8**)* @mlx4_ib_del_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_del_gid(%struct.ib_gid_attr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.gid_cache_context*, align 8
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca %struct.mlx4_ib_iboe*, align 8
  %9 = alloca %struct.mlx4_port_gid_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gid_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %4, align 8
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.gid_cache_context*
  store %struct.gid_cache_context* %17, %struct.gid_cache_context** %6, align 8
  %18 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mlx4_ib_dev* @to_mdev(i32 %20)
  store %struct.mlx4_ib_dev* %21, %struct.mlx4_ib_dev** %7, align 8
  %22 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %22, i32 0, i32 0
  store %struct.mlx4_ib_iboe* %23, %struct.mlx4_ib_iboe** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.gid_entry* null, %struct.gid_entry** %12, align 8
  %24 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %25 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %28 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rdma_cap_roce_gid_table(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %169

35:                                               ; preds = %2
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %37 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MLX4_MAX_PORTS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %169

44:                                               ; preds = %35
  %45 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %8, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %45, i32 0, i32 1
  %47 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %46, align 8
  %48 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %49 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %47, i64 %52
  store %struct.mlx4_port_gid_table* %53, %struct.mlx4_port_gid_table** %9, align 8
  %54 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %8, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.gid_cache_context*, %struct.gid_cache_context** %6, align 8
  %58 = icmp ne %struct.gid_cache_context* %57, null
  br i1 %58, label %59, label %97

59:                                               ; preds = %44
  %60 = load %struct.gid_cache_context*, %struct.gid_cache_context** %6, align 8
  %61 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.gid_cache_context*, %struct.gid_cache_context** %6, align 8
  %65 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %59
  %69 = load %struct.gid_cache_context*, %struct.gid_cache_context** %6, align 8
  %70 = getelementptr inbounds %struct.gid_cache_context, %struct.gid_cache_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %9, align 8
  %73 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = call i32 @memset(i32* %78, i32 0, i32 4)
  %80 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %9, align 8
  %81 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load %struct.gid_entry*, %struct.gid_entry** %86, align 8
  %88 = call i32 @kfree(%struct.gid_entry* %87)
  %89 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %9, align 8
  %90 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store %struct.gid_entry* null, %struct.gid_entry** %95, align 8
  store i32 1, i32* %11, align 4
  br label %96

96:                                               ; preds = %68, %59
  br label %97

97:                                               ; preds = %96, %44
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %149, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %149

103:                                              ; preds = %100
  %104 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %105 = load i32, i32* @GFP_ATOMIC, align 4
  %106 = call %struct.gid_entry* @kmalloc_array(i32 %104, i32 8, i32 %105)
  store %struct.gid_entry* %106, %struct.gid_entry** %12, align 8
  %107 = load %struct.gid_entry*, %struct.gid_entry** %12, align 8
  %108 = icmp ne %struct.gid_entry* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %10, align 4
  br label %148

112:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %144, %112
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %147

117:                                              ; preds = %113
  %118 = load %struct.gid_entry*, %struct.gid_entry** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %118, i64 %120
  %122 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %121, i32 0, i32 1
  %123 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %9, align 8
  %124 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = call i32 @memcpy(i32* %122, i32* %129, i32 4)
  %131 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %9, align 8
  %132 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.gid_entry*, %struct.gid_entry** %12, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %139, i64 %141
  %143 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %117
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %113

147:                                              ; preds = %113
  br label %148

148:                                              ; preds = %147, %109
  br label %149

149:                                              ; preds = %148, %100, %97
  %150 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %8, align 8
  %151 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock_bh(i32* %151)
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.gid_entry*, %struct.gid_entry** %12, align 8
  %160 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %161 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %162 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @mlx4_ib_update_gids(%struct.gid_entry* %159, %struct.mlx4_ib_dev* %160, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load %struct.gid_entry*, %struct.gid_entry** %12, align 8
  %166 = call i32 @kfree(%struct.gid_entry* %165)
  br label %167

167:                                              ; preds = %158, %155, %149
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %41, %32
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @rdma_cap_roce_gid_table(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.gid_entry*) #1

declare dso_local %struct.gid_entry* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlx4_ib_update_gids(%struct.gid_entry*, %struct.mlx4_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
