; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_populate_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_populate_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_stdu_update = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32 }

@SVGA_3D_CMD_UPDATE_GB_SCREENTARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*, i8*, i8*)* @vmw_stdu_populate_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_stdu_populate_update(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vmw_stdu_update*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.vmw_stdu_update*
  store %struct.vmw_stdu_update* %15, %struct.vmw_stdu_update** %13, align 8
  %16 = load i32, i32* @SVGA_3D_CMD_UPDATE_GB_SCREENTARGET, align 4
  %17 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %18 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %21 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 40, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %25 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %29 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %34 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i8* %32, i8** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %44 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.vmw_stdu_update*, %struct.vmw_stdu_update** %13, align 8
  %54 = getelementptr inbounds %struct.vmw_stdu_update, %struct.vmw_stdu_update* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
