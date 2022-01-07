; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_tracking_optimization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_tracking_optimization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i64, i64, i64, i32, i64 }

@RSTV0910_P2_DMDCFGMD = common dso_local global i64 0, align 8
@RSTV0910_TSTTSRS = common dso_local global i32 0, align 4
@DVBS2_64K = common dso_local global i64 0, align 8
@FE_QPSK_910 = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S2Q = common dso_local global i64 0, align 8
@FE_8PSK_910 = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S28 = common dso_local global i64 0, align 8
@FE_16APSK_910 = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S216A = common dso_local global i64 0, align 8
@FE_32APSK_910 = common dso_local global i64 0, align 8
@RSTV0910_P2_ACLC2S232A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @tracking_optimization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracking_optimization(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %2, align 8
  %5 = load %struct.stv*, %struct.stv** %2, align 8
  %6 = load i64, i64* @RSTV0910_P2_DMDCFGMD, align 8
  %7 = load %struct.stv*, %struct.stv** %2, align 8
  %8 = getelementptr inbounds %struct.stv, %struct.stv* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = call i32 @read_reg(%struct.stv* %5, i64 %10, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, -193
  store i32 %13, i32* %3, align 4
  %14 = load %struct.stv*, %struct.stv** %2, align 8
  %15 = getelementptr inbounds %struct.stv, %struct.stv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 64
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 128
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 192
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20, %17
  %27 = load %struct.stv*, %struct.stv** %2, align 8
  %28 = load i64, i64* @RSTV0910_P2_DMDCFGMD, align 8
  %29 = load %struct.stv*, %struct.stv** %2, align 8
  %30 = getelementptr inbounds %struct.stv, %struct.stv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @write_reg(%struct.stv* %27, i64 %32, i32 %33)
  %35 = load %struct.stv*, %struct.stv** %2, align 8
  %36 = getelementptr inbounds %struct.stv, %struct.stv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %148

39:                                               ; preds = %26
  %40 = load %struct.stv*, %struct.stv** %2, align 8
  %41 = load i32, i32* @RSTV0910_TSTTSRS, align 4
  %42 = load %struct.stv*, %struct.stv** %2, align 8
  %43 = getelementptr inbounds %struct.stv, %struct.stv* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  %48 = call i32 @write_shared_reg(%struct.stv* %40, i32 %41, i32 %47, i32 3)
  %49 = load %struct.stv*, %struct.stv** %2, align 8
  %50 = getelementptr inbounds %struct.stv, %struct.stv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DVBS2_64K, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %147

54:                                               ; preds = %39
  %55 = load %struct.stv*, %struct.stv** %2, align 8
  %56 = load %struct.stv*, %struct.stv** %2, align 8
  %57 = getelementptr inbounds %struct.stv, %struct.stv* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.stv*, %struct.stv** %2, align 8
  %60 = getelementptr inbounds %struct.stv, %struct.stv* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @get_optim_cloop(%struct.stv* %55, i64 %58, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.stv*, %struct.stv** %2, align 8
  %64 = getelementptr inbounds %struct.stv, %struct.stv* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FE_QPSK_910, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load %struct.stv*, %struct.stv** %2, align 8
  %70 = load i64, i64* @RSTV0910_P2_ACLC2S2Q, align 8
  %71 = load %struct.stv*, %struct.stv** %2, align 8
  %72 = getelementptr inbounds %struct.stv, %struct.stv* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @write_reg(%struct.stv* %69, i64 %74, i32 %75)
  br label %146

77:                                               ; preds = %54
  %78 = load %struct.stv*, %struct.stv** %2, align 8
  %79 = getelementptr inbounds %struct.stv, %struct.stv* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FE_8PSK_910, align 8
  %82 = icmp sle i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load %struct.stv*, %struct.stv** %2, align 8
  %85 = load i64, i64* @RSTV0910_P2_ACLC2S2Q, align 8
  %86 = load %struct.stv*, %struct.stv** %2, align 8
  %87 = getelementptr inbounds %struct.stv, %struct.stv* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @write_reg(%struct.stv* %84, i64 %89, i32 42)
  %91 = load %struct.stv*, %struct.stv** %2, align 8
  %92 = load i64, i64* @RSTV0910_P2_ACLC2S28, align 8
  %93 = load %struct.stv*, %struct.stv** %2, align 8
  %94 = getelementptr inbounds %struct.stv, %struct.stv* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @write_reg(%struct.stv* %91, i64 %96, i32 %97)
  br label %145

99:                                               ; preds = %77
  %100 = load %struct.stv*, %struct.stv** %2, align 8
  %101 = getelementptr inbounds %struct.stv, %struct.stv* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @FE_16APSK_910, align 8
  %104 = icmp sle i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load %struct.stv*, %struct.stv** %2, align 8
  %107 = load i64, i64* @RSTV0910_P2_ACLC2S2Q, align 8
  %108 = load %struct.stv*, %struct.stv** %2, align 8
  %109 = getelementptr inbounds %struct.stv, %struct.stv* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = call i32 @write_reg(%struct.stv* %106, i64 %111, i32 42)
  %113 = load %struct.stv*, %struct.stv** %2, align 8
  %114 = load i64, i64* @RSTV0910_P2_ACLC2S216A, align 8
  %115 = load %struct.stv*, %struct.stv** %2, align 8
  %116 = getelementptr inbounds %struct.stv, %struct.stv* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @write_reg(%struct.stv* %113, i64 %118, i32 %119)
  br label %144

121:                                              ; preds = %99
  %122 = load %struct.stv*, %struct.stv** %2, align 8
  %123 = getelementptr inbounds %struct.stv, %struct.stv* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FE_32APSK_910, align 8
  %126 = icmp sle i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %121
  %128 = load %struct.stv*, %struct.stv** %2, align 8
  %129 = load i64, i64* @RSTV0910_P2_ACLC2S2Q, align 8
  %130 = load %struct.stv*, %struct.stv** %2, align 8
  %131 = getelementptr inbounds %struct.stv, %struct.stv* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = call i32 @write_reg(%struct.stv* %128, i64 %133, i32 42)
  %135 = load %struct.stv*, %struct.stv** %2, align 8
  %136 = load i64, i64* @RSTV0910_P2_ACLC2S232A, align 8
  %137 = load %struct.stv*, %struct.stv** %2, align 8
  %138 = getelementptr inbounds %struct.stv, %struct.stv* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @write_reg(%struct.stv* %135, i64 %140, i32 %141)
  br label %143

143:                                              ; preds = %127, %121
  br label %144

144:                                              ; preds = %143, %105
  br label %145

145:                                              ; preds = %144, %83
  br label %146

146:                                              ; preds = %145, %68
  br label %147

147:                                              ; preds = %146, %39
  br label %148

148:                                              ; preds = %147, %26
  ret i32 0
}

declare dso_local i32 @read_reg(%struct.stv*, i64, i32*) #1

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

declare dso_local i32 @write_shared_reg(%struct.stv*, i32, i32, i32) #1

declare dso_local i32 @get_optim_cloop(%struct.stv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
