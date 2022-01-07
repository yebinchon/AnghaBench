; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_globals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_6__*, %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_6__ = type { i32 }
%struct.icp_qat_uclo_objhandle = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"QAT: initialize memory failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*)* @qat_uclo_init_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_globals(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  %7 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %8 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %7, i32 0, i32 1
  %9 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %8, align 8
  store %struct.icp_qat_uclo_objhandle* %9, %struct.icp_qat_uclo_objhandle** %4, align 8
  %10 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %11 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %17 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %23 = call i64 @qat_uclo_init_memory(%struct.icp_qat_fw_loader_handle* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %99

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %15
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %93, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %34 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %32, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %89, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %43 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %41, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %40
  %52 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %53 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  br label %89

67:                                               ; preds = %51
  %68 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %71 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @qat_uclo_init_reg_sym(%struct.icp_qat_fw_loader_handle* %68, i32 %69, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %99

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %40

92:                                               ; preds = %40
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %31

96:                                               ; preds = %31
  %97 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %98 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %85, %25, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @qat_uclo_init_memory(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @qat_uclo_init_reg_sym(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
