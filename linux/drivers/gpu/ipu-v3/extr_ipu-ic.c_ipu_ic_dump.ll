; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { %struct.ipu_ic_priv* }
%struct.ipu_ic_priv = type { %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"IC_CONF = \090x%08X\0A\00", align 1
@IC_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"IC_PRP_ENC_RSC = \090x%08X\0A\00", align 1
@IC_PRP_ENC_RSC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IC_PRP_VF_RSC = \090x%08X\0A\00", align 1
@IC_PRP_VF_RSC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"IC_PP_RSC = \090x%08X\0A\00", align 1
@IC_PP_RSC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"IC_CMBP_1 = \090x%08X\0A\00", align 1
@IC_CMBP_1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"IC_CMBP_2 = \090x%08X\0A\00", align 1
@IC_CMBP_2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"IC_IDMAC_1 = \090x%08X\0A\00", align 1
@IC_IDMAC_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"IC_IDMAC_2 = \090x%08X\0A\00", align 1
@IC_IDMAC_2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"IC_IDMAC_3 = \090x%08X\0A\00", align 1
@IC_IDMAC_3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"IC_IDMAC_4 = \090x%08X\0A\00", align 1
@IC_IDMAC_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_ic_dump(%struct.ipu_ic* %0) #0 {
  %2 = alloca %struct.ipu_ic*, align 8
  %3 = alloca %struct.ipu_ic_priv*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  store %struct.ipu_ic* %0, %struct.ipu_ic** %2, align 8
  %5 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %6 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %5, i32 0, i32 0
  %7 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %6, align 8
  store %struct.ipu_ic_priv* %7, %struct.ipu_ic_priv** %3, align 8
  %8 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %8, i32 0, i32 0
  %10 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  store %struct.ipu_soc* %10, %struct.ipu_soc** %4, align 8
  %11 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %12 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %15 = load i32, i32* @IC_CONF, align 4
  %16 = call i32 @ipu_ic_read(%struct.ipu_ic* %14, i32 %15)
  %17 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %19 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %22 = load i32, i32* @IC_PRP_ENC_RSC, align 4
  %23 = call i32 @ipu_ic_read(%struct.ipu_ic* %21, i32 %22)
  %24 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %26 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %29 = load i32, i32* @IC_PRP_VF_RSC, align 4
  %30 = call i32 @ipu_ic_read(%struct.ipu_ic* %28, i32 %29)
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %33 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %36 = load i32, i32* @IC_PP_RSC, align 4
  %37 = call i32 @ipu_ic_read(%struct.ipu_ic* %35, i32 %36)
  %38 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %40 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %43 = load i32, i32* @IC_CMBP_1, align 4
  %44 = call i32 @ipu_ic_read(%struct.ipu_ic* %42, i32 %43)
  %45 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %47 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %50 = load i32, i32* @IC_CMBP_2, align 4
  %51 = call i32 @ipu_ic_read(%struct.ipu_ic* %49, i32 %50)
  %52 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %54 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %57 = load i32, i32* @IC_IDMAC_1, align 4
  %58 = call i32 @ipu_ic_read(%struct.ipu_ic* %56, i32 %57)
  %59 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  %60 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %61 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %64 = load i32, i32* @IC_IDMAC_2, align 4
  %65 = call i32 @ipu_ic_read(%struct.ipu_ic* %63, i32 %64)
  %66 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %68 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %71 = load i32, i32* @IC_IDMAC_3, align 4
  %72 = call i32 @ipu_ic_read(%struct.ipu_ic* %70, i32 %71)
  %73 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  %74 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %75 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %78 = load i32, i32* @IC_IDMAC_4, align 4
  %79 = call i32 @ipu_ic_read(%struct.ipu_ic* %77, i32 %78)
  %80 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ipu_ic_read(%struct.ipu_ic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
