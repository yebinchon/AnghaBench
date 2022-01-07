; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_parse_uof_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_parse_uof_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_5__*, %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.icp_qat_uclo_objhandle = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.icp_qat_uof_objhdr*, i64 }
%struct.icp_qat_uof_objhdr = type { i32 }
%struct.TYPE_7__ = type { i64 }

@PID_MAJOR_REV = common dso_local global i32 0, align 4
@PID_MINOR_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"QAT: UOF incompatible\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UWORD_CPYBUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICP_QAT_UCLO_MAX_USTORE = common dso_local global i32 0, align 4
@ICP_QAT_UOF_STRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"QAT: UOF doesn't have effective images\0A\00", align 1
@ICP_QAT_UCLO_MAX_AE = common dso_local global i32 0, align 4
@ICP_QAT_UCLO_MAX_CTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"QAT: Bad object\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*)* @qat_uclo_parse_uof_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_parse_uof_obj(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %5 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  %6 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %7 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %6, i32 0, i32 1
  %8 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %7, align 8
  store %struct.icp_qat_uclo_objhandle* %8, %struct.icp_qat_uclo_objhandle** %4, align 8
  %9 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %10 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %9, i32 0, i32 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i64 %13, i64* %16, align 8
  %17 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %18 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %17, i32 0, i32 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.icp_qat_uof_objhdr*
  %23 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %24 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.icp_qat_uof_objhdr* %22, %struct.icp_qat_uof_objhdr** %25, align 8
  %26 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %27 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %26, i32 0, i32 0
  store i32 6, i32* %27, align 8
  %28 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %29 = call i32 @qat_uclo_get_dev_type(%struct.icp_qat_fw_loader_handle* %28)
  %30 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %31 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @PID_MAJOR_REV, align 4
  %33 = load i32, i32* @PID_MINOR_REV, align 4
  %34 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %35 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %33, %38
  %40 = or i32 %32, %39
  %41 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %42 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %44 = call i64 @qat_uclo_check_uof_compat(%struct.icp_qat_uclo_objhandle* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %152

50:                                               ; preds = %1
  %51 = load i32, i32* @UWORD_CPYBUF_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @kcalloc(i32 %51, i32 4, i32 %52)
  %54 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %55 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %57 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %152

63:                                               ; preds = %50
  %64 = load i32, i32* @ICP_QAT_UCLO_MAX_USTORE, align 4
  %65 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %66 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 8
  %67 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %68 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %67, i32 0, i32 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %75 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %74, i32 0, i32 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* @ICP_QAT_UOF_STRT, align 4
  %78 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %79 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %78, i32 0, i32 7
  %80 = call i32 @qat_uclo_map_str_table(%struct.TYPE_7__* %76, i32 %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73, %63
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %145

84:                                               ; preds = %73
  %85 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %86 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %87 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %86, i32 0, i32 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* @ICP_QAT_UCLO_MAX_AE, align 4
  %90 = load i32, i32* @ICP_QAT_UCLO_MAX_CTX, align 4
  %91 = mul nsw i32 %89, %90
  %92 = call i32 @qat_uclo_map_uimage(%struct.icp_qat_uclo_objhandle* %85, %struct.TYPE_6__* %88, i32 %91)
  %93 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %94 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %96 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %84
  br label %145

100:                                              ; preds = %84
  %101 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %102 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %103 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @qat_uclo_map_ae(%struct.icp_qat_fw_loader_handle* %101, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %124

111:                                              ; preds = %100
  %112 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %113 = call i32 @qat_uclo_init_uword_num(%struct.icp_qat_fw_loader_handle* %112)
  %114 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %115 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %114, i32 0, i32 6
  %116 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %117 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %116, i32 0, i32 5
  %118 = call i32 @qat_uclo_map_initmem_table(%struct.TYPE_8__* %115, i32* %117)
  %119 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %120 = call i64 @qat_uclo_set_ae_mode(%struct.icp_qat_fw_loader_handle* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %124

123:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %152

124:                                              ; preds = %122, %109
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %128 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %133 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @kfree(i32 %139)
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %5, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %125

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %99, %82
  %146 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %4, align 8
  %147 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @kfree(i32 %148)
  %150 = load i32, i32* @EFAULT, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %145, %123, %60, %46
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @qat_uclo_get_dev_type(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i64 @qat_uclo_check_uof_compat(%struct.icp_qat_uclo_objhandle*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qat_uclo_map_str_table(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @qat_uclo_map_uimage(%struct.icp_qat_uclo_objhandle*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @qat_uclo_map_ae(%struct.icp_qat_fw_loader_handle*, i32) #1

declare dso_local i32 @qat_uclo_init_uword_num(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @qat_uclo_map_initmem_table(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @qat_uclo_set_ae_mode(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
