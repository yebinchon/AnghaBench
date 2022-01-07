; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_init_plugs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_init_plugs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hqvdp = type { i64 }

@PLUG_PAGE_SIZE_256 = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_PAGE_SIZE = common dso_local global i64 0, align 8
@PLUG_MIN_OPC_8 = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_MIN_OPC = common dso_local global i64 0, align 8
@PLUG_MAX_OPC_64 = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_MAX_OPC = common dso_local global i64 0, align 8
@PLUG_MAX_CHK_2X = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_MAX_CHK = common dso_local global i64 0, align 8
@PLUG_MAX_MSG_1X = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_MAX_MSG = common dso_local global i64 0, align 8
@PLUG_MIN_SPACE_1 = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_MIN_SPACE = common dso_local global i64 0, align 8
@PLUG_CONTROL_ENABLE = common dso_local global i32 0, align 4
@HQVDP_RD_PLUG_CONTROL = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_PAGE_SIZE = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_MIN_OPC = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_MAX_OPC = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_MAX_CHK = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_MAX_MSG = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_MIN_SPACE = common dso_local global i64 0, align 8
@HQVDP_WR_PLUG_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hqvdp*)* @sti_hqvdp_init_plugs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_hqvdp_init_plugs(%struct.sti_hqvdp* %0) #0 {
  %2 = alloca %struct.sti_hqvdp*, align 8
  store %struct.sti_hqvdp* %0, %struct.sti_hqvdp** %2, align 8
  %3 = load i32, i32* @PLUG_PAGE_SIZE_256, align 4
  %4 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %5 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HQVDP_RD_PLUG_PAGE_SIZE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = load i32, i32* @PLUG_MIN_OPC_8, align 4
  %11 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %12 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HQVDP_RD_PLUG_MIN_OPC, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* @PLUG_MAX_OPC_64, align 4
  %18 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %19 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HQVDP_RD_PLUG_MAX_OPC, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load i32, i32* @PLUG_MAX_CHK_2X, align 4
  %25 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %26 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HQVDP_RD_PLUG_MAX_CHK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* @PLUG_MAX_MSG_1X, align 4
  %32 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %33 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HQVDP_RD_PLUG_MAX_MSG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load i32, i32* @PLUG_MIN_SPACE_1, align 4
  %39 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %40 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HQVDP_RD_PLUG_MIN_SPACE, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* @PLUG_CONTROL_ENABLE, align 4
  %46 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %47 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @HQVDP_RD_PLUG_CONTROL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load i32, i32* @PLUG_PAGE_SIZE_256, align 4
  %53 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %54 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HQVDP_WR_PLUG_PAGE_SIZE, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* @PLUG_MIN_OPC_8, align 4
  %60 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %61 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HQVDP_WR_PLUG_MIN_OPC, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* @PLUG_MAX_OPC_64, align 4
  %67 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %68 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HQVDP_WR_PLUG_MAX_OPC, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* @PLUG_MAX_CHK_2X, align 4
  %74 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %75 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HQVDP_WR_PLUG_MAX_CHK, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* @PLUG_MAX_MSG_1X, align 4
  %81 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %82 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HQVDP_WR_PLUG_MAX_MSG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i32, i32* @PLUG_MIN_SPACE_1, align 4
  %88 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %89 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HQVDP_WR_PLUG_MIN_SPACE, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load i32, i32* @PLUG_CONTROL_ENABLE, align 4
  %95 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %2, align 8
  %96 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @HQVDP_WR_PLUG_CONTROL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
