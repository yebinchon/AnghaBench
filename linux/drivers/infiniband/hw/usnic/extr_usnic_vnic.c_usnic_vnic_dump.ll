; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic = type { i32, %struct.usnic_vnic_res_chunk* }
%struct.usnic_vnic_res_chunk = type { i32, %struct.usnic_vnic_res** }
%struct.usnic_vnic_res = type { i8*, i32, i32, i32 }
%struct.vnic_dev_bar = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"VF:%hu BAR0 bus_addr=%pa vaddr=0x%p size=%ld \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"|RES\09|CTRL_PIN\09\09|IN_USE\09\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"|%s[%u]\09|0x%p\09|%u\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_vnic_dump(%struct.usnic_vnic* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i8*, i32)* %4, i32 (i8*, i32)* %5, i32 (i8*, i8*, i32)* %6) #0 {
  %8 = alloca %struct.usnic_vnic*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*, i32)*, align 8
  %13 = alloca i32 (i8*, i32)*, align 8
  %14 = alloca i32 (i8*, i8*, i32)*, align 8
  %15 = alloca %struct.usnic_vnic_res_chunk*, align 8
  %16 = alloca %struct.usnic_vnic_res*, align 8
  %17 = alloca %struct.vnic_dev_bar*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.usnic_vnic* %0, %struct.usnic_vnic** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 (i8*, i8*, i32)* %4, i32 (i8*, i8*, i32)** %12, align 8
  store i32 (i8*, i32)* %5, i32 (i8*, i32)** %13, align 8
  store i32 (i8*, i8*, i32)* %6, i32 (i8*, i8*, i32)** %14, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.usnic_vnic*, %struct.usnic_vnic** %8, align 8
  %22 = call %struct.vnic_dev_bar* @usnic_vnic_get_bar(%struct.usnic_vnic* %21, i32 0)
  store %struct.vnic_dev_bar* %22, %struct.vnic_dev_bar** %17, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %20, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %20, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load %struct.usnic_vnic*, %struct.usnic_vnic** %8, align 8
  %31 = call i32 @usnic_vnic_get_index(%struct.usnic_vnic* %30)
  %32 = load %struct.vnic_dev_bar*, %struct.vnic_dev_bar** %17, align 8
  %33 = getelementptr inbounds %struct.vnic_dev_bar, %struct.vnic_dev_bar* %32, i32 0, i32 2
  %34 = load %struct.vnic_dev_bar*, %struct.vnic_dev_bar** %17, align 8
  %35 = getelementptr inbounds %struct.vnic_dev_bar, %struct.vnic_dev_bar* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vnic_dev_bar*, %struct.vnic_dev_bar** %17, align 8
  %38 = getelementptr inbounds %struct.vnic_dev_bar, %struct.vnic_dev_bar* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %26, i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31, i32* %33, i32 %36, i32 %39)
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %20, align 4
  %45 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %12, align 8
  %46 = icmp ne i32 (i8*, i8*, i32)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %7
  %48 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %20, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 %48(i8* %49, i8* %53, i32 %56)
  %58 = load i32, i32* %20, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %20, align 4
  br label %60

60:                                               ; preds = %47, %7
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %20, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %64, i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %20, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %20, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %76, i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %20, align 4
  %85 = load i32 (i8*, i32)*, i32 (i8*, i32)** %13, align 8
  %86 = icmp ne i32 (i8*, i32)* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %60
  %88 = load i32 (i8*, i32)*, i32 (i8*, i32)** %13, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %20, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 %88(i8* %92, i32 %95)
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %20, align 4
  br label %99

99:                                               ; preds = %87, %60
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %103, i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %20, align 4
  %112 = load %struct.usnic_vnic*, %struct.usnic_vnic** %8, align 8
  %113 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %112, i32 0, i32 0
  %114 = call i32 @spin_lock(i32* %113)
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %206, %99
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.usnic_vnic*, %struct.usnic_vnic** %8, align 8
  %118 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %117, i32 0, i32 1
  %119 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %118, align 8
  %120 = call i32 @ARRAY_SIZE(%struct.usnic_vnic_res_chunk* %119)
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %209

122:                                              ; preds = %115
  %123 = load %struct.usnic_vnic*, %struct.usnic_vnic** %8, align 8
  %124 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %123, i32 0, i32 1
  %125 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %124, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %125, i64 %127
  store %struct.usnic_vnic_res_chunk* %128, %struct.usnic_vnic_res_chunk** %15, align 8
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %202, %122
  %130 = load i32, i32* %19, align 4
  %131 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %15, align 8
  %132 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %205

135:                                              ; preds = %129
  %136 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %15, align 8
  %137 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %136, i32 0, i32 1
  %138 = load %struct.usnic_vnic_res**, %struct.usnic_vnic_res*** %137, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %138, i64 %140
  %142 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %141, align 8
  store %struct.usnic_vnic_res* %142, %struct.usnic_vnic_res** %16, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %20, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %20, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %16, align 8
  %151 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @usnic_vnic_res_type_to_str(i32 %152)
  %154 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %16, align 8
  %155 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %16, align 8
  %158 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %16, align 8
  %161 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %146, i32 %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %156, i32 %159, i32 %166)
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %20, align 4
  %172 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %14, align 8
  %173 = icmp ne i32 (i8*, i8*, i32)* %172, null
  br i1 %173, label %174, label %189

174:                                              ; preds = %135
  %175 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %14, align 8
  %176 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %16, align 8
  %177 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %20, align 4
  %185 = sub nsw i32 %183, %184
  %186 = call i32 %175(i8* %178, i8* %182, i32 %185)
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %20, align 4
  br label %189

189:                                              ; preds = %174, %135
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %20, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %20, align 4
  %196 = sub nsw i32 %194, %195
  %197 = call i64 (i8*, i32, i8*, ...) @scnprintf(i8* %193, i32 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %20, align 4
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %19, align 4
  br label %129

205:                                              ; preds = %129
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %18, align 4
  br label %115

209:                                              ; preds = %115
  %210 = load %struct.usnic_vnic*, %struct.usnic_vnic** %8, align 8
  %211 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %210, i32 0, i32 0
  %212 = call i32 @spin_unlock(i32* %211)
  %213 = load i32, i32* %20, align 4
  ret i32 %213
}

declare dso_local %struct.vnic_dev_bar* @usnic_vnic_get_bar(%struct.usnic_vnic*, i32) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @usnic_vnic_get_index(%struct.usnic_vnic*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @usnic_vnic_res_type_to_str(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
