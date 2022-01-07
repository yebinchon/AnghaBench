; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_acquire_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_acquire_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.mlx4_ib_demux_ctx* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %union.ib_gid }
%union.ib_gid = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_ib_demux_ctx = type { i32, i32, i32 }

@mgid0 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_VFS = common dso_local global i32 0, align 4
@mlx4_ib_mcg_work_handler = common dso_local global i32 0, align 4
@mlx4_ib_mcg_timeout_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%016llx%016llx\00", align 1
@sysfs_show_group = common dso_local global i32 0, align 4
@MCAST_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"group just showed up %s - confused\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mcast_group* (%struct.mlx4_ib_demux_ctx*, %union.ib_gid*, i32)* @acquire_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mcast_group*, align 8
  %9 = alloca %struct.mcast_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_demux_ctx* %0, %struct.mlx4_ib_demux_ctx** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %13 = call i32 @memcmp(i32* @mgid0, %union.ib_gid* %12, i32 4)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %5, align 8
  %21 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %22 = call %struct.mcast_group* @mcast_find(%struct.mlx4_ib_demux_ctx* %20, %union.ib_gid* %21)
  store %struct.mcast_group* %22, %struct.mcast_group** %8, align 8
  %23 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %24 = icmp ne %struct.mcast_group* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %165

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.mcast_group* @ERR_PTR(i32 %32)
  store %struct.mcast_group* %33, %struct.mcast_group** %4, align 8
  br label %170

34:                                               ; preds = %27
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.mcast_group* @kzalloc(i32 88, i32 %35)
  store %struct.mcast_group* %36, %struct.mcast_group** %8, align 8
  %37 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %38 = icmp ne %struct.mcast_group* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.mcast_group* @ERR_PTR(i32 %41)
  store %struct.mcast_group* %42, %struct.mcast_group** %4, align 8
  br label %170

43:                                               ; preds = %34
  %44 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %5, align 8
  %45 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %46 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %45, i32 0, i32 11
  store %struct.mlx4_ib_demux_ctx* %44, %struct.mlx4_ib_demux_ctx** %46, align 8
  %47 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %48 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %51 = bitcast %union.ib_gid* %49 to i8*
  %52 = bitcast %union.ib_gid* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  %53 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %54 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %53, i32 0, i32 10
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %57 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %56, i32 0, i32 3
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %72, %43
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MAX_VFS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %65 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %64, i32 0, i32 9
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %59

75:                                               ; preds = %59
  %76 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %77 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %76, i32 0, i32 8
  %78 = load i32, i32* @mlx4_ib_mcg_work_handler, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %81 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %80, i32 0, i32 7
  %82 = load i32, i32* @mlx4_ib_mcg_timeout_handler, align 4
  %83 = call i32 @INIT_DELAYED_WORK(i32* %81, i32 %82)
  %84 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %85 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %84, i32 0, i32 6
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %88 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %91 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = bitcast %union.ib_gid* %92 to %struct.TYPE_8__*
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be64_to_cpu(i32 %95)
  %97 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %98 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = bitcast %union.ib_gid* %99 to %struct.TYPE_8__*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be64_to_cpu(i32 %102)
  %104 = call i32 @sprintf(i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %103)
  %105 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %106 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = call i32 @sysfs_attr_init(%struct.TYPE_11__* %107)
  %109 = load i32, i32* @sysfs_show_group, align 4
  %110 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %111 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 8
  %113 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %114 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32* null, i32** %115, align 8
  %116 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %117 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %120 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %124 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 256, i32* %126, align 8
  %127 = load i32, i32* @MCAST_IDLE, align 4
  %128 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %129 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %75
  %133 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %134 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %133, i32 0, i32 3
  %135 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %5, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %135, i32 0, i32 2
  %137 = call i32 @list_add(i32* %134, i32* %136)
  br label %165

138:                                              ; preds = %75
  %139 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %5, align 8
  %140 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %141 = call %struct.mcast_group* @mcast_insert(%struct.mlx4_ib_demux_ctx* %139, %struct.mcast_group* %140)
  store %struct.mcast_group* %141, %struct.mcast_group** %9, align 8
  %142 = load %struct.mcast_group*, %struct.mcast_group** %9, align 8
  %143 = icmp ne %struct.mcast_group* %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load %struct.mcast_group*, %struct.mcast_group** %9, align 8
  %146 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @mcg_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %150 = call i32 @kfree(%struct.mcast_group* %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  %153 = call %struct.mcast_group* @ERR_PTR(i32 %152)
  store %struct.mcast_group* %153, %struct.mcast_group** %4, align 8
  br label %170

154:                                              ; preds = %138
  %155 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %5, align 8
  %156 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %5, align 8
  %159 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %162 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = call i32 @add_sysfs_port_mcg_attr(i32 %157, i32 %160, %struct.TYPE_11__* %163)
  br label %165

165:                                              ; preds = %154, %132, %25
  %166 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  %167 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %166, i32 0, i32 0
  %168 = call i32 @atomic_inc(i32* %167)
  %169 = load %struct.mcast_group*, %struct.mcast_group** %8, align 8
  store %struct.mcast_group* %169, %struct.mcast_group** %4, align 8
  br label %170

170:                                              ; preds = %165, %144, %39, %30
  %171 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  ret %struct.mcast_group* %171
}

declare dso_local i32 @memcmp(i32*, %union.ib_gid*, i32) #1

declare dso_local %struct.mcast_group* @mcast_find(%struct.mlx4_ib_demux_ctx*, %union.ib_gid*) #1

declare dso_local %struct.mcast_group* @ERR_PTR(i32) #1

declare dso_local %struct.mcast_group* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_11__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.mcast_group* @mcast_insert(%struct.mlx4_ib_demux_ctx*, %struct.mcast_group*) #1

declare dso_local i32 @mcg_warn(i8*, i32) #1

declare dso_local i32 @kfree(%struct.mcast_group*) #1

declare dso_local i32 @add_sysfs_port_mcg_attr(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
