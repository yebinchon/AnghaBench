; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_get_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_get_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { %struct.hd_geometry }
%struct.hd_geometry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_get_geometry(%struct.mapped_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %5 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %6 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %7 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %6, i32 0, i32 0
  %8 = bitcast %struct.hd_geometry* %5 to i8*
  %9 = bitcast %struct.hd_geometry* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
