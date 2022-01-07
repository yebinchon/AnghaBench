; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_hem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_hem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_hem_table = type { i64, i64*, i64*, %struct.hns_roce_hem** }
%struct.hns_roce_hem = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32 }
%struct.hns_roce_hem_iter = type { i32 }
%struct.hns_roce_hem_mhop = type { i32, i32, i32, i32, i32 }

@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HEM_TYPE_SCCC = common dso_local global i64 0, align 8
@HNS_ROCE_CMD_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i32, i32)* @hns_roce_v2_set_hem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_set_hem(%struct.hns_roce_dev* %0, %struct.hns_roce_hem_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_hem_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %11 = alloca %struct.hns_roce_hem_iter, align 4
  %12 = alloca %struct.hns_roce_hem_mhop, align 4
  %13 = alloca %struct.hns_roce_hem*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_hem_table* %1, %struct.hns_roce_hem_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %28 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %27, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %191

34:                                               ; preds = %4
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %36 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %37 = call i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev* %35, %struct.hns_roce_hem_table* %36, i64* %14, %struct.hns_roce_hem_mhop* %12)
  %38 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %12, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %12, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %12, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %23, align 4
  %46 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %12, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 8
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %70

51:                                               ; preds = %34
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %22, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %22, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %22, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %56, %59
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %19, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %22, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %20, align 8
  br label %89

70:                                               ; preds = %34
  %71 = load i32, i32* %23, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %22, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %19, align 8
  br label %88

80:                                               ; preds = %70
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %19, align 8
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88, %51
  %90 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %91 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %92 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @get_op_for_set_hem(%struct.hns_roce_dev* %90, i64 %93, i32 %94)
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %191

101:                                              ; preds = %89
  %102 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %103 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %102)
  store %struct.hns_roce_cmd_mailbox* %103, %struct.hns_roce_cmd_mailbox** %10, align 8
  %104 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %10, align 8
  %105 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %10, align 8
  %109 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %108)
  store i32 %109, i32* %5, align 4
  br label %191

110:                                              ; preds = %101
  %111 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %112 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HEM_TYPE_SCCC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.hns_roce_hem_mhop, %struct.hns_roce_hem_mhop* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @check_whether_last_step(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %119
  %125 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %126 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %125, i32 0, i32 3
  %127 = load %struct.hns_roce_hem**, %struct.hns_roce_hem*** %126, align 8
  %128 = load i64, i64* %19, align 8
  %129 = getelementptr inbounds %struct.hns_roce_hem*, %struct.hns_roce_hem** %127, i64 %128
  %130 = load %struct.hns_roce_hem*, %struct.hns_roce_hem** %129, align 8
  store %struct.hns_roce_hem* %130, %struct.hns_roce_hem** %13, align 8
  %131 = load %struct.hns_roce_hem*, %struct.hns_roce_hem** %13, align 8
  %132 = call i32 @hns_roce_hem_first(%struct.hns_roce_hem* %131, %struct.hns_roce_hem_iter* %11)
  br label %133

133:                                              ; preds = %148, %124
  %134 = call i32 @hns_roce_hem_last(%struct.hns_roce_hem_iter* %11)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = call i64 @hns_roce_hem_addr(%struct.hns_roce_hem_iter* %11)
  store i64 %138, i64* %21, align 8
  %139 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %140 = load i64, i64* %21, align 8
  %141 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %10, align 8
  %142 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %24, align 4
  %146 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %147 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %139, i64 %140, i32 %143, i32 %144, i32 0, i32 %145, i32 %146)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %137
  %149 = call i32 @hns_roce_hem_next(%struct.hns_roce_hem_iter* %11)
  br label %133

150:                                              ; preds = %133
  br label %186

151:                                              ; preds = %119
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %156 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %21, align 8
  br label %176

162:                                              ; preds = %151
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i32, i32* %23, align 4
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load %struct.hns_roce_hem_table*, %struct.hns_roce_hem_table** %7, align 8
  %170 = getelementptr inbounds %struct.hns_roce_hem_table, %struct.hns_roce_hem_table* %169, i32 0, i32 2
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* %20, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %21, align 8
  br label %175

175:                                              ; preds = %168, %165, %162
  br label %176

176:                                              ; preds = %175, %154
  %177 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %178 = load i64, i64* %21, align 8
  %179 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %10, align 8
  %180 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %24, align 4
  %184 = load i32, i32* @HNS_ROCE_CMD_TIMEOUT_MSECS, align 4
  %185 = call i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev* %177, i64 %178, i32 %181, i32 %182, i32 0, i32 %183, i32 %184)
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %176, %150
  %187 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %188 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %10, align 8
  %189 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %187, %struct.hns_roce_cmd_mailbox* %188)
  %190 = load i32, i32* %18, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %186, %107, %100, %33
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i64) #1

declare dso_local i32 @hns_roce_calc_hem_mhop(%struct.hns_roce_dev*, %struct.hns_roce_hem_table*, i64*, %struct.hns_roce_hem_mhop*) #1

declare dso_local i32 @get_op_for_set_hem(%struct.hns_roce_dev*, i64, i32) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i64 @check_whether_last_step(i32, i32) #1

declare dso_local i32 @hns_roce_hem_first(%struct.hns_roce_hem*, %struct.hns_roce_hem_iter*) #1

declare dso_local i32 @hns_roce_hem_last(%struct.hns_roce_hem_iter*) #1

declare dso_local i64 @hns_roce_hem_addr(%struct.hns_roce_hem_iter*) #1

declare dso_local i32 @hns_roce_cmd_mbox(%struct.hns_roce_dev*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_hem_next(%struct.hns_roce_hem_iter*) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
