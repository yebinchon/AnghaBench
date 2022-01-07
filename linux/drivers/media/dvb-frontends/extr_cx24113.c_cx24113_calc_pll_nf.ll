; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_calc_pll_nf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24113.c_cx24113_calc_pll_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24113_state = type { i32, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REV_CX24113 = common dso_local global i64 0, align 8
@VCODIV2 = common dso_local global i32 0, align 4
@VCODIV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"calculating N/F for %dHz with vcodiv %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"strange frequency: N < 6\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"1 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"2 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"3 N: %d, F: %lld, R: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"4 N: %d, F: %lld, R: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx24113_state*, i64*, i32*)* @cx24113_calc_pll_nf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx24113_calc_pll_nf(%struct.cx24113_state* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.cx24113_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cx24113_state* %0, %struct.cx24113_state** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %16 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 1000
  store i32 %18, i32* %14, align 4
  %19 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %20 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 20000
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %27

26:                                               ; preds = %3
  store i32 2, i32* %13, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %29 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REV_CX24113, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %35 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 1100000
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @VCODIV2, align 4
  store i32 %39, i32* %12, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @VCODIV4, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %53

43:                                               ; preds = %27
  %44 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %45 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 1165000
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @VCODIV2, align 4
  store i32 %49, i32* %12, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @VCODIV4, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %56 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %94, %53
  %62 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @cx24113_set_ref_div(%struct.cx24113_state* %62, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sdiv i32 %66, 100
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %73 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %76, %77
  %79 = mul nsw i32 %78, 2
  %80 = load i32, i32* %7, align 4
  %81 = sdiv i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 5
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %84, 10
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 32
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 6
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 3
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i1 [ false, %88 ], [ %93, %91 ]
  br i1 %95, label %61, label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 6
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @cx_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %185

101:                                              ; preds = %96
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %103, %104
  %106 = mul nsw i32 %105, 262144
  %107 = load i32, i32* %8, align 4
  %108 = mul nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %109, i64 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %117 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %116, i32 0, i32 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 1000
  %122 = load i32, i32* %13, align 4
  %123 = mul nsw i32 %121, %122
  %124 = mul nsw i32 %123, 2
  %125 = call i32 @do_div(i32 %115, i32 %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %127, i64 %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 32
  %134 = mul nsw i32 %133, 262144
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %10, align 4
  %141 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %137, i64 %139, i32 %140)
  %142 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %143 = getelementptr inbounds %struct.cx24113_state, %struct.cx24113_state* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %101
  %147 = load i32, i32* %8, align 4
  %148 = icmp sgt i32 %147, 129434
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 129434, i32* %8, align 4
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, -129434
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 -129434, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %150
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %155, 3277
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %8, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %8, align 4
  %162 = icmp sgt i32 %161, -3277
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163, %157
  store i32 0, i32* %8, align 4
  %167 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %168 = call i32 @cx24113_readreg(%struct.cx24113_state* %167, i32 16)
  store i32 %168, i32* %11, align 4
  %169 = load %struct.cx24113_state*, %struct.cx24113_state** %4, align 8
  %170 = load i32, i32* %11, align 4
  %171 = or i32 %170, 64
  %172 = call i32 @cx24113_writereg(%struct.cx24113_state* %169, i32 16, i32 %171)
  br label %173

173:                                              ; preds = %166, %163, %160
  br label %174

174:                                              ; preds = %173, %101
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %10, align 4
  %179 = call i32 (i8*, i32, i64, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %175, i64 %177, i32 %178)
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64*, i64** %5, align 8
  store i64 %181, i64* %182, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %6, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %174, %99
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64, ...) #1

declare dso_local i32 @cx24113_set_ref_div(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx_err(i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @cx24113_readreg(%struct.cx24113_state*, i32) #1

declare dso_local i32 @cx24113_writereg(%struct.cx24113_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
