; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_check_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_recv.c_check_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.rxe_port }
%struct.rxe_port = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_pkt_info = type { i32, i64 }
%struct.rxe_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad pkey = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bad pkey = 0x%0x\0A\00", align 1
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@GSI_QKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"bad qkey, got 0x%x expected 0x%x for qpn 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*, %struct.rxe_pkt_info*, i32, %struct.rxe_qp*)* @check_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_keys(%struct.rxe_dev* %0, %struct.rxe_pkt_info* %1, i32 %2, %struct.rxe_qp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_dev*, align 8
  %7 = alloca %struct.rxe_pkt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxe_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rxe_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %6, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rxe_qp* %3, %struct.rxe_qp** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %16 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %15, i32 0, i32 0
  store %struct.rxe_port* %16, %struct.rxe_port** %12, align 8
  %17 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %18 = call i32 @bth_pkey(%struct.rxe_pkt_info* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %20 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %59

23:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %27 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %34 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @pkey_match(i32 %32, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %45 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 1, i32* %11, align 4
  br label %50

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %24

50:                                               ; preds = %42, %24
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i8*, i32, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %57 = call i32 @set_bad_pkey_cntr(%struct.rxe_port* %56)
  br label %133

58:                                               ; preds = %50
  br label %89

59:                                               ; preds = %4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %62 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.rxe_qp*, %struct.rxe_qp** %9, align 8
  %65 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @pkey_match(i32 %60, i32 %69)
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load i32, i32* %13, align 4
  %78 = call i32 (i8*, i32, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %80 = call i32 @set_bad_pkey_cntr(%struct.rxe_port* %79)
  br label %133

81:                                               ; preds = %59
  %82 = load %struct.rxe_qp*, %struct.rxe_qp** %9, align 8
  %83 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %88 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %81, %58
  %90 = load %struct.rxe_qp*, %struct.rxe_qp** %9, align 8
  %91 = call i64 @qp_type(%struct.rxe_qp* %90)
  %92 = load i64, i64* @IB_QPT_UD, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.rxe_qp*, %struct.rxe_qp** %9, align 8
  %96 = call i64 @qp_type(%struct.rxe_qp* %95)
  %97 = load i64, i64* @IB_QPT_GSI, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %94, %89
  %100 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %101 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @GSI_QKEY, align 4
  br label %114

109:                                              ; preds = %104
  %110 = load %struct.rxe_qp*, %struct.rxe_qp** %9, align 8
  %111 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  br label %114

114:                                              ; preds = %109, %107
  %115 = phi i32 [ %108, %107 ], [ %113, %109 ]
  store i32 %115, i32* %14, align 4
  %116 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %117 = call i32 @deth_qkey(%struct.rxe_pkt_info* %116)
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %114
  %124 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %7, align 8
  %125 = call i32 @deth_qkey(%struct.rxe_pkt_info* %124)
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i8*, i32, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126, i32 %127)
  %129 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %130 = call i32 @set_qkey_viol_cntr(%struct.rxe_port* %129)
  br label %133

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %99, %94
  store i32 0, i32* %5, align 4
  br label %136

133:                                              ; preds = %123, %76, %53
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %132
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @bth_pkey(%struct.rxe_pkt_info*) #1

declare dso_local i64 @pkey_match(i32, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, ...) #1

declare dso_local i32 @set_bad_pkey_cntr(%struct.rxe_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @deth_qkey(%struct.rxe_pkt_info*) #1

declare dso_local i32 @set_qkey_viol_cntr(%struct.rxe_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
