; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_rereg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_rereg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_5__*, %struct.TYPE_4__, %struct.device* }
%struct.TYPE_5__ = type { i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i32, i32, i32)* }
%struct.hns_roce_mr = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_QUERY_MPT = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HW2SW_MPT failed (%d)\0A\00", align 1
@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SW2HW_MPT failed (%d)\0A\00", align 1
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_rereg_user_mr(%struct.ib_mr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.ib_pd* %6, %struct.ib_udata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_pd*, align 8
  %17 = alloca %struct.ib_udata*, align 8
  %18 = alloca %struct.hns_roce_dev*, align 8
  %19 = alloca %struct.hns_roce_mr*, align 8
  %20 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.ib_pd* %6, %struct.ib_pd** %16, align 8
  store %struct.ib_udata* %7, %struct.ib_udata** %17, align 8
  %25 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %26 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.hns_roce_dev* @to_hr_dev(i32 %27)
  store %struct.hns_roce_dev* %28, %struct.hns_roce_dev** %18, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %30 = call %struct.hns_roce_mr* @to_hr_mr(%struct.ib_mr* %29)
  store %struct.hns_roce_mr* %30, %struct.hns_roce_mr** %19, align 8
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 2
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %21, align 8
  store i32 0, i32* %23, align 4
  %34 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %35 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %171

41:                                               ; preds = %8
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %43 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %42)
  store %struct.hns_roce_cmd_mailbox* %43, %struct.hns_roce_cmd_mailbox** %20, align 8
  %44 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %45 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %49 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %48)
  store i32 %49, i32* %9, align 4
  br label %171

50:                                               ; preds = %41
  %51 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @key_to_hw_index(i32 %53)
  %55 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %56 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %54, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %22, align 8
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %63 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %64 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %22, align 8
  %67 = load i32, i32* @HNS_ROCE_CMD_QUERY_MPT, align 4
  %68 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %69 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %62, i32 0, i32 %65, i64 %66, i32 0, i32 %67, i32 %68)
  store i32 %69, i32* %24, align 4
  %70 = load i32, i32* %24, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %50
  br label %166

73:                                               ; preds = %50
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %75 = load i64, i64* %22, align 8
  %76 = call i32 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev* %74, i32* null, i64 %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.device*, %struct.device** %21, align 8
  %81 = load i32, i32* %24, align 4
  %82 = call i32 @dev_warn(%struct.device* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @IB_MR_REREG_PD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.ib_pd*, %struct.ib_pd** %16, align 8
  %92 = call %struct.TYPE_6__* @to_hr_pd(%struct.ib_pd* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %90, %83
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %108 = load i32, i32* %23, align 4
  %109 = load %struct.ib_udata*, %struct.ib_udata** %17, align 8
  %110 = call i32 @rereg_mr_trans(%struct.ib_mr* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, %struct.hns_roce_cmd_mailbox* %107, i32 %108, %struct.ib_udata* %109)
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %24, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %166

114:                                              ; preds = %100
  br label %136

115:                                              ; preds = %95
  %116 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %117 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i32, i32, i32)** %119, align 8
  %121 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %122 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %129 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 %120(%struct.hns_roce_dev* %121, %struct.hns_roce_mr* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %130)
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %24, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %115
  br label %166

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %138 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %139 = load i64, i64* %22, align 8
  %140 = call i32 @hns_roce_sw2hw_mpt(%struct.hns_roce_dev* %137, %struct.hns_roce_cmd_mailbox* %138, i64 %139)
  store i32 %140, i32* %24, align 4
  %141 = load i32, i32* %24, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.device*, %struct.device** %21, align 8
  %145 = load i32, i32* %24, align 4
  %146 = call i32 @dev_err(%struct.device* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %148 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ib_umem_release(i32 %149)
  br label %166

151:                                              ; preds = %136
  %152 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %153 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %19, align 8
  %161 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %151
  %163 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %164 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %165 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %163, %struct.hns_roce_cmd_mailbox* %164)
  store i32 0, i32* %9, align 4
  br label %171

166:                                              ; preds = %143, %134, %113, %72
  %167 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %18, align 8
  %168 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %20, align 8
  %169 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %167, %struct.hns_roce_cmd_mailbox* %168)
  %170 = load i32, i32* %24, align 4
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %166, %162, %47, %38
  %172 = load i32, i32* %9, align 4
  ret i32 %172
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_mr* @to_hr_mr(%struct.ib_mr*) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev*, i32*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @to_hr_pd(%struct.ib_pd*) #1

declare dso_local i32 @rereg_mr_trans(%struct.ib_mr*, i32, i32, i32, i32, i32, %struct.hns_roce_cmd_mailbox*, i32, %struct.ib_udata*) #1

declare dso_local i32 @hns_roce_sw2hw_mpt(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
