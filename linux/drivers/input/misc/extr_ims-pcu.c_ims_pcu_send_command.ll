; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32*, i32, i32 }

@IMS_PCU_PROTOCOL_STX = common dso_local global i32 0, align 4
@IMS_PCU_PROTOCOL_DLE = common dso_local global i8* null, align 8
@IMS_PCU_PROTOCOL_ETX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i32, i32*, i32)* @ims_pcu_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_send_command(%struct.ims_pcu* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ims_pcu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @IMS_PCU_PROTOCOL_STX, align 4
  %18 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %19 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %17, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %27 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %15, align 4
  %36 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %37 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %44 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  br label %47

47:                                               ; preds = %42, %4
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @ims_pcu_byte_needs_escape(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i8*, i8** @IMS_PCU_PROTOCOL_DLE, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %55 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %47
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %64 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %139, %61
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %142

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ims_pcu_byte_needs_escape(i32 %82)
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 2, i32 1
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %91 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %77
  %95 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @ims_pcu_send_cmd_chunk(%struct.ims_pcu* %95, i32 %96, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %206

105:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %105, %77
  %107 = load i32, i32* %12, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i8*, i8** @IMS_PCU_PROTOCOL_DLE, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %113 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %111, i32* %118, align 4
  br label %119

119:                                              ; preds = %109, %106
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %126 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %124, i32* %131, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %119
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %73

142:                                              ; preds = %73
  %143 = load i32, i32* %15, align 4
  %144 = xor i32 %143, -1
  %145 = add nsw i32 1, %144
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i64 @ims_pcu_byte_needs_escape(i32 %146)
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 3, i32 2
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %155 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %142
  %159 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ims_pcu_send_cmd_chunk(%struct.ims_pcu* %159, i32 %160, i32 %162, i32 %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %5, align 4
  br label %206

169:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  br label %170

170:                                              ; preds = %169, %142
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %171, 3
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load i8*, i8** @IMS_PCU_PROTOCOL_DLE, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %177 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %175, i32* %182, align 4
  br label %183

183:                                              ; preds = %173, %170
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %186 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %184, i32* %191, align 4
  %192 = load i32, i32* @IMS_PCU_PROTOCOL_ETX, align 4
  %193 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %194 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %192, i32* %199, align 4
  %200 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @ims_pcu_send_cmd_chunk(%struct.ims_pcu* %200, i32 %201, i32 %203, i32 %204)
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %183, %167, %103
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i64 @ims_pcu_byte_needs_escape(i32) #1

declare dso_local i32 @ims_pcu_send_cmd_chunk(%struct.ims_pcu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
