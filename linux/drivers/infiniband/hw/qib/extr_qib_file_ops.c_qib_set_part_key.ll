; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_set_part_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_set_part_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@QIB_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QIB_IB_CFG_PKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, i32)* @qib_set_part_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_set_part_key(%struct.qib_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qib_ctxtdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %12, i32 0, i32 1
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  store %struct.qib_pportdata* %14, %struct.qib_pportdata** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 32767
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @QIB_DEFAULT_P_KEY, align 4
  %19 = and i32 %18, 32767
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %204

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 32768
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %66, %28
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %34 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %31
  %39 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %40 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %47, %38
  %53 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %54 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @EEXIST, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %204

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %204

75:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %139, %75
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %79 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %142

83:                                               ; preds = %76
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  store i32 1, i32* %9, align 4
  br label %139

93:                                               ; preds = %83
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %95 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %93
  %104 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %105 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32* %109, i32** %11, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @atomic_inc_return(i32* %110)
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %121

113:                                              ; preds = %103
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %116 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  store i32 0, i32* %3, align 4
  br label %204

121:                                              ; preds = %103
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @atomic_dec(i32* %122)
  store i32 1, i32* %9, align 4
  br label %124

124:                                              ; preds = %121, %93
  %125 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %126 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 32767
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* @EEXIST, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %204

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %92
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %76

142:                                              ; preds = %76
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %204

148:                                              ; preds = %142
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %198, %148
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %152 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ARRAY_SIZE(i32* %153)
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %201

156:                                              ; preds = %149
  %157 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %158 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %197, label %165

165:                                              ; preds = %156
  %166 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %167 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = call i32 @atomic_inc_return(i32* %171)
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %197

174:                                              ; preds = %165
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %177 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %184 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %190 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %192, align 8
  %194 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %195 = load i32, i32* @QIB_IB_CFG_PKEYS, align 4
  %196 = call i32 %193(%struct.qib_pportdata* %194, i32 %195, i32 0)
  store i32 0, i32* %3, align 4
  br label %204

197:                                              ; preds = %165, %156
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %149

201:                                              ; preds = %149
  %202 = load i32, i32* @EBUSY, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %201, %174, %145, %135, %113, %72, %62, %25, %21
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
