; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-l2c.c_octeon_l2c_poll_oct1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-l2c.c_octeon_l2c_poll_oct1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32 }
%union.cvmx_l2t_err = type { i8* }
%union.cvmx_l2d_err = type { i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CVMX_L2T_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Tag Single bit error (corrected)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Tag Double bit error (detected)\00", align 1
@CVMX_L2D_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Data Single bit error (corrected)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Data Double bit error (detected)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @octeon_l2c_poll_oct1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_l2c_poll_oct1(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %union.cvmx_l2t_err, align 8
  %4 = alloca %union.cvmx_l2t_err, align 8
  %5 = alloca %union.cvmx_l2d_err, align 8
  %6 = alloca %union.cvmx_l2d_err, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %7 = bitcast %union.cvmx_l2t_err* %4 to i8**
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @CVMX_L2T_ERR, align 4
  %9 = call i8* @cvmx_read_csr(i32 %8)
  %10 = bitcast %union.cvmx_l2t_err* %3 to i8**
  store i8* %9, i8** %10, align 8
  %11 = bitcast %union.cvmx_l2t_err* %3 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %17 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %16, i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = bitcast %union.cvmx_l2t_err* %4 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = bitcast %union.cvmx_l2t_err* %3 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %27 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %26, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %28 = bitcast %union.cvmx_l2t_err* %4 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = bitcast %union.cvmx_l2t_err* %4 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @CVMX_L2T_ERR, align 4
  %36 = bitcast %union.cvmx_l2t_err* %4 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @cvmx_write_csr(i32 %35, i8* %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = bitcast %union.cvmx_l2d_err* %6 to i8**
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* @CVMX_L2D_ERR, align 4
  %42 = call i8* @cvmx_read_csr(i32 %41)
  %43 = bitcast %union.cvmx_l2d_err* %5 to i8**
  store i8* %42, i8** %43, align 8
  %44 = bitcast %union.cvmx_l2d_err* %5 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %50 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %49, i32 0, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %51 = bitcast %union.cvmx_l2d_err* %6 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %39
  %54 = bitcast %union.cvmx_l2d_err* %5 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %60 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %59, i32 0, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %61 = bitcast %union.cvmx_l2d_err* %6 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = bitcast %union.cvmx_l2d_err* %6 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @CVMX_L2D_ERR, align 4
  %69 = bitcast %union.cvmx_l2d_err* %6 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @cvmx_write_csr(i32 %68, i8* %70)
  br label %72

72:                                               ; preds = %67, %63
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
