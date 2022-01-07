; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_cq_init_attr = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.device = type { i32 }
%struct.hns_roce_ib_create_cq_resp = type { i32 }
%struct.hns_roce_cq = type { i32, i32, i32, i32, i64*, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Creat CQ failed. entries=%d, max=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Create cq failed in user mode!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Create cq failed in kernel mode!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Creat CQ .Failed to cq_alloc.\0A\00", align 1
@hns_roce_ib_cq_comp = common dso_local global i32 0, align 4
@hns_roce_ib_cq_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_ib_create_cq(%struct.ib_cq* %0, %struct.ib_cq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_cq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.hns_roce_ib_create_cq_resp, align 4
  %11 = alloca %struct.hns_roce_cq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store %struct.ib_cq_init_attr* %1, %struct.ib_cq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %15 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %16 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.hns_roce_dev* @to_hr_dev(i32 %17)
  store %struct.hns_roce_dev* %18, %struct.hns_roce_dev** %8, align 8
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 1
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = bitcast %struct.hns_roce_ib_create_cq_resp* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %24 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %23)
  store %struct.hns_roce_cq* %24, %struct.hns_roce_cq** %11, align 8
  %25 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ib_cq_init_attr*, %struct.ib_cq_init_attr** %6, align 8
  %29 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %33, %3
  %41 = load %struct.device*, %struct.device** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %44 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %168

50:                                               ; preds = %33
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %52 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %59 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @max(i32 %57, i64 %61)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @roundup_pow_of_two(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %69 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %72 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %71, i32 0, i32 6
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %75 = icmp ne %struct.ib_udata* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %63
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %78 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %79 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @create_user_cq(%struct.hns_roce_dev* %77, %struct.hns_roce_cq* %78, %struct.ib_udata* %79, %struct.hns_roce_ib_create_cq_resp* %10, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.device*, %struct.device** %9, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %166

87:                                               ; preds = %76
  br label %99

88:                                               ; preds = %63
  %89 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %90 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @create_kernel_cq(%struct.hns_roce_dev* %89, %struct.hns_roce_cq* %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.device*, %struct.device** %9, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %166

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %103 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @hns_roce_cq_alloc(%struct.hns_roce_dev* %100, i32 %101, i32* %104, %struct.hns_roce_cq* %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load %struct.device*, %struct.device** %9, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %153

113:                                              ; preds = %99
  %114 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %115 = icmp ne %struct.ib_udata* %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %113
  %117 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %118 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %117, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %123 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %122, i32 0, i32 4
  %124 = load i64*, i64** %123, align 8
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %116, %113
  %126 = load i32, i32* @hns_roce_ib_cq_comp, align 4
  %127 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %128 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @hns_roce_ib_cq_event, align 4
  %130 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %131 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %134 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %136 = icmp ne %struct.ib_udata* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %125
  %138 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %139 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.hns_roce_ib_create_cq_resp, %struct.hns_roce_ib_create_cq_resp* %10, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %143 = call i32 @ib_copy_to_udata(%struct.ib_udata* %142, %struct.hns_roce_ib_create_cq_resp* %10, i32 4)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %149

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %125
  store i32 0, i32* %4, align 4
  br label %168

149:                                              ; preds = %146
  %150 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %151 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %152 = call i32 @hns_roce_free_cq(%struct.hns_roce_dev* %150, %struct.hns_roce_cq* %151)
  br label %153

153:                                              ; preds = %149, %110
  %154 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %155 = icmp ne %struct.ib_udata* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %158 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %159 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %160 = call i32 @destroy_user_cq(%struct.hns_roce_dev* %157, %struct.hns_roce_cq* %158, %struct.ib_udata* %159, %struct.hns_roce_ib_create_cq_resp* %10)
  br label %165

161:                                              ; preds = %153
  %162 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %163 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %11, align 8
  %164 = call i32 @destroy_kernel_cq(%struct.hns_roce_dev* %162, %struct.hns_roce_cq* %163)
  br label %165

165:                                              ; preds = %161, %156
  br label %166

166:                                              ; preds = %165, %95, %84
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %148, %40
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @create_user_cq(%struct.hns_roce_dev*, %struct.hns_roce_cq*, %struct.ib_udata*, %struct.hns_roce_ib_create_cq_resp*, i32) #1

declare dso_local i32 @create_kernel_cq(%struct.hns_roce_dev*, %struct.hns_roce_cq*, i32) #1

declare dso_local i32 @hns_roce_cq_alloc(%struct.hns_roce_dev*, i32, i32*, %struct.hns_roce_cq*, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.hns_roce_ib_create_cq_resp*, i32) #1

declare dso_local i32 @hns_roce_free_cq(%struct.hns_roce_dev*, %struct.hns_roce_cq*) #1

declare dso_local i32 @destroy_user_cq(%struct.hns_roce_dev*, %struct.hns_roce_cq*, %struct.ib_udata*, %struct.hns_roce_ib_create_cq_resp*) #1

declare dso_local i32 @destroy_kernel_cq(%struct.hns_roce_dev*, %struct.hns_roce_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
