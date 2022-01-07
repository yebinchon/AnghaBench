; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_func_clr_rst_prc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_func_clr_rst_prc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, i32, i32, i32, i64 }
%struct.hns_roce_v2_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i64 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)* }

@.str = private unnamed_addr constant [33 x i8] c"Func clear success after reset.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Func clear is pending, device in resetting state.\0A\00", align 1
@HNS_ROCE_V2_HW_RST_TIMEOUT = common dso_local global i64 0, align 8
@HNS_ROCE_V2_HW_RST_COMPLETION_WAIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Func clear failed.\0A\00", align 1
@HNS_ROCE_STATE_INIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Func clear success after sw reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Func clear failed because of unfinished sw reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Func clear read failed, ret = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32, i32)* @hns_roce_func_clr_rst_prc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_func_clr_rst_prc(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_v2_priv*, align 8
  %8 = alloca %struct.hnae3_handle*, align 8
  %9 = alloca %struct.hnae3_ae_ops*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %18, %struct.hns_roce_v2_priv** %7, align 8
  %19 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %7, align 8
  %20 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %19, i32 0, i32 0
  %21 = load %struct.hnae3_handle*, %struct.hnae3_handle** %20, align 8
  store %struct.hnae3_handle* %21, %struct.hnae3_handle** %8, align 8
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %25, align 8
  store %struct.hnae3_ae_ops* %26, %struct.hnae3_ae_ops** %9, align 8
  %27 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %28 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %9, align 8
  %32 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %31, i32 0, i32 0
  %33 = load i64 (%struct.hnae3_handle*)*, i64 (%struct.hnae3_handle*)** %32, align 8
  %34 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %35 = call i64 %33(%struct.hnae3_handle* %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %9, align 8
  %37 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %36, i32 0, i32 1
  %38 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %37, align 8
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %40 = call i32 %38(%struct.hnae3_handle* %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %9, align 8
  %42 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %41, i32 0, i32 2
  %43 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %42, align 8
  %44 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %45 = call i32 %43(%struct.hnae3_handle* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %3
  %52 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_info(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %164

60:                                               ; preds = %3
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %65 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %64, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %67 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dev_warn(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* @HNS_ROCE_V2_HW_RST_TIMEOUT, align 8
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %88, %63
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %9, align 8
  %76 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %75, i32 0, i32 1
  %77 = load i32 (%struct.hnae3_handle*)*, i32 (%struct.hnae3_handle*)** %76, align 8
  %78 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %79 = call i32 %77(%struct.hnae3_handle* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %83 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %82, i32 0, i32 2
  store i32 1, i32* %83, align 4
  %84 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_info(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %164

88:                                               ; preds = %74
  %89 = load i64, i64* @HNS_ROCE_V2_HW_RST_COMPLETION_WAIT, align 8
  %90 = call i32 @msleep(i64 %89)
  %91 = load i64, i64* @HNS_ROCE_V2_HW_RST_COMPLETION_WAIT, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %12, align 8
  br label %71

94:                                               ; preds = %71
  %95 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %96 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_warn(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %163

99:                                               ; preds = %60
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %145

102:                                              ; preds = %99
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @HNS_ROCE_STATE_INIT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %102
  %107 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %108 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %107, i32 0, i32 1
  store i32 1, i32* %108, align 8
  %109 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %110 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @dev_warn(i32 %111, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i64, i64* @HNS_ROCE_V2_HW_RST_TIMEOUT, align 8
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %134, %106
  %115 = load i64, i64* %12, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %114
  %118 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %9, align 8
  %119 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %118, i32 0, i32 0
  %120 = load i64 (%struct.hnae3_handle*)*, i64 (%struct.hnae3_handle*)** %119, align 8
  %121 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %122 = call i64 %120(%struct.hnae3_handle* %121)
  %123 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %124 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %117
  %128 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %129 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %131 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_info(i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %164

134:                                              ; preds = %117
  %135 = load i64, i64* @HNS_ROCE_V2_HW_RST_COMPLETION_WAIT, align 8
  %136 = call i32 @msleep(i64 %135)
  %137 = load i64, i64* @HNS_ROCE_V2_HW_RST_COMPLETION_WAIT, align 8
  %138 = load i64, i64* %12, align 8
  %139 = sub i64 %138, %137
  store i64 %139, i64* %12, align 8
  br label %114

140:                                              ; preds = %114
  %141 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %142 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @dev_warn(i32 %143, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %162

145:                                              ; preds = %102, %99
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %153 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i32, i8*, ...) @dev_warn(i32 %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %151, %148, %145
  %158 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %159 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @dev_warn(i32 %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %157, %140
  br label %163

163:                                              ; preds = %162, %94
  br label %164

164:                                              ; preds = %81, %127, %163, %51
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
