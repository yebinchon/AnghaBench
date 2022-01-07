; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp_uk = type { i64, i32 }
%struct.i40iw_post_sq_info = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i40iw_post_send }
%struct.i40iw_post_send = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@I40IW_ERR_INVALID_FRAG_COUNT = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@I40IWQPSQ_REMSTAG = common dso_local global i32 0, align 4
@I40IWQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IWQPSQ_ADDFRAGCNT = common dso_local global i32 0, align 4
@I40IWQPSQ_READFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_LOCALFENCE = common dso_local global i32 0, align 4
@I40IWQPSQ_SIGCOMPL = common dso_local global i32 0, align 4
@I40IWQPSQ_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_qp_uk*, %struct.i40iw_post_sq_info*, i64, i32)* @i40iw_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_send(%struct.i40iw_qp_uk* %0, %struct.i40iw_post_sq_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_qp_uk*, align 8
  %7 = alloca %struct.i40iw_post_sq_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40iw_post_send*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i40iw_qp_uk* %0, %struct.i40iw_qp_uk** %6, align 8
  store %struct.i40iw_post_sq_info* %1, %struct.i40iw_post_sq_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  %20 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %21 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.i40iw_post_send* %22, %struct.i40iw_post_send** %11, align 8
  %23 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %24 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %27 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @I40IW_ERR_INVALID_FRAG_COUNT, align 4
  store i32 %31, i32* %5, align 4
  br label %165

32:                                               ; preds = %4
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %36 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %41 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %15, align 8
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %54 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @i40iw_fragcnt_to_wqesize_sq(i64 %55, i32* %19)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %5, align 4
  br label %165

61:                                               ; preds = %52
  %62 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %66 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk* %62, i64* %14, i32 %63, i64 %64, i32 %67)
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  store i32 %72, i32* %5, align 4
  br label %165

73:                                               ; preds = %61
  %74 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %75 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %18, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %18, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @set_64bit_val(i32* %79, i32 16, i32 0)
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @I40IWQPSQ_REMSTAG, align 4
  %84 = call i32 @LS_64(i32 %82, i32 %83)
  %85 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %86 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @I40IWQPSQ_OPCODE, align 4
  %89 = call i32 @LS_64(i32 %87, i32 %88)
  %90 = or i32 %84, %89
  %91 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %92 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %73
  %96 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %97 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %98, 1
  br label %101

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %100, %95
  %102 = phi i64 [ %99, %95 ], [ 0, %100 ]
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @I40IWQPSQ_ADDFRAGCNT, align 4
  %105 = call i32 @LS_64(i32 %103, i32 %104)
  %106 = or i32 %90, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @I40IWQPSQ_READFENCE, align 4
  %109 = call i32 @LS_64(i32 %107, i32 %108)
  %110 = or i32 %106, %109
  %111 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %112 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @I40IWQPSQ_LOCALFENCE, align 4
  %115 = call i32 @LS_64(i32 %113, i32 %114)
  %116 = or i32 %110, %115
  %117 = load %struct.i40iw_post_sq_info*, %struct.i40iw_post_sq_info** %7, align 8
  %118 = getelementptr inbounds %struct.i40iw_post_sq_info, %struct.i40iw_post_sq_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @I40IWQPSQ_SIGCOMPL, align 4
  %121 = call i32 @LS_64(i32 %119, i32 %120)
  %122 = or i32 %116, %121
  %123 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %124 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @I40IWQPSQ_VALID, align 4
  %127 = call i32 @LS_64(i32 %125, i32 %126)
  %128 = or i32 %122, %127
  store i32 %128, i32* %12, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %131 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = call i32 @i40iw_set_fragment(i32* %129, i64 0, %struct.TYPE_4__* %132)
  store i64 1, i64* %13, align 8
  store i64 32, i64* %16, align 8
  br label %134

134:                                              ; preds = %151, %101
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %137 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %134
  %141 = load i32*, i32** %10, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load %struct.i40iw_post_send*, %struct.i40iw_post_send** %11, align 8
  %144 = getelementptr inbounds %struct.i40iw_post_send, %struct.i40iw_post_send* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %146
  %148 = call i32 @i40iw_set_fragment(i32* %141, i64 %142, %struct.TYPE_4__* %147)
  %149 = load i64, i64* %16, align 8
  %150 = add i64 %149, 16
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %140
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %13, align 8
  br label %134

154:                                              ; preds = %134
  %155 = call i32 (...) @wmb()
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @set_64bit_val(i32* %156, i32 24, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %6, align 8
  %163 = call i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk* %162)
  br label %164

164:                                              ; preds = %161, %154
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %71, %59, %30
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @i40iw_fragcnt_to_wqesize_sq(i64, i32*) #1

declare dso_local i32* @i40iw_qp_get_next_send_wqe(%struct.i40iw_qp_uk*, i64*, i32, i64, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_set_fragment(i32*, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @i40iw_qp_post_wr(%struct.i40iw_qp_uk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
