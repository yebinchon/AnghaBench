; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_verify_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_verify_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_cmd_hdr = type { i32, i32, i64 }
%struct.ib_uverbs_ex_cmd_hdr = type { i32, i32, i64, i64 }
%struct.uverbs_api_write_method = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IB_USER_VERBS_CMD_DESTROY_CQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr*, i64, %struct.uverbs_api_write_method*)* @verify_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_hdr(%struct.ib_uverbs_cmd_hdr* %0, %struct.ib_uverbs_ex_cmd_hdr* %1, i64 %2, %struct.uverbs_api_write_method* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_uverbs_cmd_hdr*, align 8
  %7 = alloca %struct.ib_uverbs_ex_cmd_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uverbs_api_write_method*, align 8
  store %struct.ib_uverbs_cmd_hdr* %0, %struct.ib_uverbs_cmd_hdr** %6, align 8
  store %struct.ib_uverbs_ex_cmd_hdr* %1, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.uverbs_api_write_method* %3, %struct.uverbs_api_write_method** %9, align 8
  %10 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %9, align 8
  %11 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %115

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = sub i64 %15, 40
  store i64 %16, i64* %8, align 8
  %17 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  %24 = mul nsw i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %162

31:                                               ; preds = %14
  %32 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 8
  %36 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %9, align 8
  %37 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %162

43:                                               ; preds = %31
  %44 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %162

51:                                               ; preds = %43
  %52 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %53 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %51
  %57 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %63 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %162

69:                                               ; preds = %61, %56
  %70 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %71 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 8
  %74 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %9, align 8
  %75 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @ENOSPC, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %162

81:                                               ; preds = %69
  %82 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @u64_to_user_ptr(i64 %84)
  %86 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %87 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %90 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = mul nsw i32 %92, 8
  %94 = call i32 @access_ok(i32 %85, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %81
  %97 = load i32, i32* @EFAULT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %162

99:                                               ; preds = %81
  br label %114

100:                                              ; preds = %51
  %101 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %102 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.ib_uverbs_ex_cmd_hdr*, %struct.ib_uverbs_ex_cmd_hdr** %7, align 8
  %107 = getelementptr inbounds %struct.ib_uverbs_ex_cmd_hdr, %struct.ib_uverbs_ex_cmd_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105, %100
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %162

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %99
  store i32 0, i32* %5, align 4
  br label %162

115:                                              ; preds = %4
  %116 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %162

126:                                              ; preds = %115
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %9, align 8
  %129 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, 8
  %133 = icmp ult i64 %127, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %126
  %135 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IB_USER_VERBS_CMD_DESTROY_CQ, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i64, i64* %8, align 8
  %142 = icmp eq i64 %141, 16
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %145 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %144, i32 0, i32 0
  store i32 6, i32* %145, align 8
  store i32 0, i32* %5, align 4
  br label %162

146:                                              ; preds = %140, %134
  %147 = load i32, i32* @ENOSPC, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %162

149:                                              ; preds = %126
  %150 = load %struct.ib_uverbs_cmd_hdr*, %struct.ib_uverbs_cmd_hdr** %6, align 8
  %151 = getelementptr inbounds %struct.ib_uverbs_cmd_hdr, %struct.ib_uverbs_cmd_hdr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 4
  %154 = load %struct.uverbs_api_write_method*, %struct.uverbs_api_write_method** %9, align 8
  %155 = getelementptr inbounds %struct.uverbs_api_write_method, %struct.uverbs_api_write_method* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* @ENOSPC, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %162

161:                                              ; preds = %149
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %158, %146, %143, %123, %114, %110, %96, %78, %66, %48, %40, %28
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @access_ok(i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
