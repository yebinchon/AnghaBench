; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_get_a_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_get_a_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.qib_user_info = type { i64 }
%struct.qib_devdata = type { i64, i64, i64, i64, i64* }

@ENXIO = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@QIB_PORT_ALG_ACROSS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.qib_user_info*, i32)* @get_a_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_a_ctxt(%struct.file* %0, %struct.qib_user_info* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.qib_user_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.qib_devdata*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.qib_devdata*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.qib_user_info* %1, %struct.qib_user_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.qib_devdata* null, %struct.qib_devdata** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.qib_user_info*, %struct.qib_user_info** %5, align 8
  %24 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = call i32 @qib_count_units(i32* %10, i32* %11)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %197

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ENETDOWN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %197

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @QIB_PORT_ALG_ACROSS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %153

42:                                               ; preds = %38
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %140, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %143

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.qib_devdata* @qib_lookup(i32 %48)
  store %struct.qib_devdata* %49, %struct.qib_devdata** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %51 = icmp ne %struct.qib_devdata* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %140

53:                                               ; preds = %47
  %54 = load i64, i64* %15, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i64, i64* %15, align 8
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ule i64 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %65, %66
  %68 = sub i64 %67, 1
  %69 = call i64 @usable(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %21, align 4
  br label %97

72:                                               ; preds = %62, %56, %53
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = call i64 @usable(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %21, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %89, %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %73

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %140

101:                                              ; preds = %97
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %103 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %16, align 8
  br label %105

105:                                              ; preds = %126, %101
  %106 = load i64, i64* %16, align 8
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %19, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %125

122:                                              ; preds = %111
  %123 = load i32, i32* %20, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %16, align 8
  br label %105

129:                                              ; preds = %105
  %130 = load i32, i32* %20, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  store %struct.qib_devdata* %137, %struct.qib_devdata** %7, align 8
  %138 = load i32, i32* %19, align 4
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %136, %132, %129
  br label %140

140:                                              ; preds = %139, %100, %52
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %43

143:                                              ; preds = %43
  %144 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %145 = icmp ne %struct.qib_devdata* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.file*, %struct.file** %4, align 8
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load %struct.qib_user_info*, %struct.qib_user_info** %5, align 8
  %151 = call i32 @choose_port_ctxt(%struct.file* %147, %struct.qib_devdata* %148, i64 %149, %struct.qib_user_info* %150)
  store i32 %151, i32* %8, align 4
  br label %197

152:                                              ; preds = %143
  br label %186

153:                                              ; preds = %38
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %182, %153
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = call %struct.qib_devdata* @qib_lookup(i32 %159)
  store %struct.qib_devdata* %160, %struct.qib_devdata** %22, align 8
  %161 = load %struct.qib_devdata*, %struct.qib_devdata** %22, align 8
  %162 = icmp ne %struct.qib_devdata* %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %158
  %164 = load %struct.file*, %struct.file** %4, align 8
  %165 = load %struct.qib_devdata*, %struct.qib_devdata** %22, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load %struct.qib_user_info*, %struct.qib_user_info** %5, align 8
  %168 = call i32 @choose_port_ctxt(%struct.file* %164, %struct.qib_devdata* %165, i64 %166, %struct.qib_user_info* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %163
  br label %197

172:                                              ; preds = %163
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @EBUSY, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %177, %172
  br label %181

181:                                              ; preds = %180, %158
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %154

185:                                              ; preds = %154
  br label %186

186:                                              ; preds = %185, %152
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* @EBUSY, align 4
  %191 = sub nsw i32 0, %190
  br label %195

192:                                              ; preds = %186
  %193 = load i32, i32* @ENETDOWN, align 4
  %194 = sub nsw i32 0, %193
  br label %195

195:                                              ; preds = %192, %189
  %196 = phi i32 [ %191, %189 ], [ %194, %192 ]
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %195, %171, %146, %35, %29
  %198 = load i32, i32* %8, align 4
  ret i32 %198
}

declare dso_local i32 @qib_count_units(i32*, i32*) #1

declare dso_local %struct.qib_devdata* @qib_lookup(i32) #1

declare dso_local i64 @usable(i64) #1

declare dso_local i32 @choose_port_ctxt(%struct.file*, %struct.qib_devdata*, i64, %struct.qib_user_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
